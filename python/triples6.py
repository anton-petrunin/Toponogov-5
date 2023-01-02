from itertools import combinations
from itertools import permutations

def AllTriples(string):
  L=[]
  for element in combinations(string,3):
      L.append(list(element))
      L.append([element[1],element[2],element[0]])
      L.append([element[2],element[0],element[1]])
  return L

def AllPairs(string):
  L=[]
  for element in combinations(string,2):
      L.append(list(element))
  return L

Total={0,1,2,3,4,5}
Triples=AllTriples(list(Total))
Pairs=AllPairs(list(Total))

#print(len(Triples))
#print(len(Pairs))

def Check(a,b):
  cap=set(a).intersection(set(b))
  if len(cap)==1:
    return True
  elif len(cap)==3:
    return False
  elif (a[1]==b[1]):
    return False
  elif (a[1] in cap) and (b[1] in cap):
    return True
  elif (a[1] not in cap) and (b[1] not in cap):
    return True
  else:
    return False

def BigCheck(triple,configuration):
  if all(Check(triple,b) for b in configuration):
    return True
  else:
    return False

#print(Check([1,2,3],[2,3,4]))
#print(BigCheck([0,2,4],[[0,1,2],[1,2,3],[2,3,4],[3,4,0],[4,0,1]]))

def DubleSort(configuration):
  for i in configuration:
    [i[0],i[2]]=sorted([i[0],i[2]])
  return sorted(configuration)

def CongruentConfiguration(a,b):
  n=len(a)
  bb=DubleSort(b)
  if (n!=len(b)):
    return False
  else:
    for q in list(permutations(range(len(Total)))):
        if DubleSort([[q[i] for i in j] for j in a])==bb:
          return True
    return False

#print(CongruentConfiguration([[0, 1, 2], [1, 2, 3], [2, 3, 4], [3, 4, 0], [4, 0, 1]], [[0, 1, 2], [1, 2, 3], [2, 3, 4], [4, 0, 1], [3, 4, 0]]))

def New(newconfiguration,bigconfiguration):
  if all([(not CongruentConfiguration(configuration,newconfiguration)) for  configuration in bigconfiguration]):
      return True
  else:
      return False
  
#print(New([[1,2,3],[1,2,4]],[[[4,2,1],[3,2,1]],[[1,4,3],[1,2,4]]]))
#print(CongruentConfiguration([[1,2,3],[1,2,4]],[[4,2,1],[3,2,1]]))
#print(BigClean([[[1,2,3],[1,2,4]],[[1,3,4],[2,3,0]]]))

def PairInConfiguration(pair,configuration):
  for triple in configuration:
    if set(pair)<set(triple):
     return True
  return False
 
#print(PairInConfiguration([2,1],[[1,3,2],[1,4,3]]))
#print(PairInConfiguration([5,0],[[0,1,2],[1,2,3],[2,3,4],[3,4,0],[4,0,1]]))
#print(set([0,3])<set([3,4,0]))

def CompleteConfiguration(configuration):
  if len(configuration)<(len(Pairs)-1)/2:
    return False
  elif all([PairInConfiguration(pair,configuration) for pair in Pairs]):
    return True
  else:
    return False

#print(CompleteConfiguration([[0,1,2],[1,2,3],[2,3,4],[3,4,0],[4,0,1]]))
#print(CompleteConfiguration([[0, 1, 2]]))

def Expand(configuration):
  L=[]
  for triple in Triples:
    if BigCheck(triple,configuration):
      L.append(configuration+[triple])
  return L

#W=[[[0,1,2],[1,2,3],[5,1,4]]]
W=[[]]
WW=[]

while W!=[]:
  print("======== {}".format(len(W)))
  thelast=W[0]
  W.pop(0)
  if (CompleteConfiguration(thelast) and New(thelast,WW)):
    WW.append(thelast)
    print(thelast)
  for configuration in Expand(thelast):
    if New(configuration,W):
      W.append(configuration)
      print("new {}".format(len(configuration)))
    else:
      print("old {}".format(len(configuration)))
      
print()      
print("================================================================================")
print() 
print("======== there are {} answers: ========".format(len(WW)))
print() 
for conf in WW:
  print(conf)

WWW=WW[:]

for a in WWW:
  for b in WWW:
    bb=DubleSort(b)
    for q in list(permutations(range(len(Total)))):
      if a!=b and b in WWW and len([k for k in DubleSort([[q[i] for i in j] for j in a]) if k not in bb])==0:
        WWW.remove(b)

print()      
print("================================================================================")
print() 
print("======== there are {} reduced answers: ========".format(len(WWW)))
print() 
for conf in WWW:
  print(DubleSort(conf))

def Glue(conf):
  Changed=True
  while Changed:
    Changed=False
    for a in conf:
      for b in conf:
        if a!=b:
          aa=a[::-1]
          bb=b[::-1]
          if a[-1]==b[1] and a[-2]==b[0] and a in conf and b in conf:
            Changed=True
            conf.remove(a)
            conf.remove(b)
            conf.append(a +b[2:])
          elif a[-1]==bb[1] and a[-2]==bb[0] and a in conf and b in conf:
            Changed=True
            conf.remove(a)
            conf.remove(b)
            conf.append(a +bb[2:])
          elif aa[-1]==bb[1] and aa[-2]==bb[0] and a in conf and b in conf:
            Changed=True
            conf.remove(a)
            conf.remove(b)
            conf.append(aa +bb[2:])
          elif aa[-1]==b[1] and aa[-2]==b[0] and a in conf and b in conf:
            Changed=True
            conf.remove(a)
            conf.remove(b)
            conf.append(aa +b[2:])
  return conf


print()      
print("================================================================================")
print() 
print("======== reduced forms: ========".format(len(WWW)))
print() 
for conf in WWW:
  print(Glue(conf))
