# coding:utf8
'''
Created on 2018年2月12日
@author: XuXianda

'''
from numpy import *
import P3_ImplementingAdaBoost
import P4_Testing
#自适应加载数据
def loadDataSet(filename):
    #创建数据集矩阵，标签向量
    dataMat=[];labelMat=[]
    #获取特征数目(包括最后一类标签)
    #readline():读取文件的一行
    #readlines:读取整个文件所有行
    numFeat=len(open(filename).readline().split('\t'))
    #打开文件
    fr=open(filename)
    #遍历文本每一行
    for line in fr.readlines():
        lineArr=[]
        curLine=line.strip().split('\t')
        for i in range(numFeat-1):
            lineArr.append(float(curLine[i]))
        #数据矩阵
        dataMat.append(lineArr)
        #标签向量
        labelMat.append(float(curLine[-1]))
    return dataMat,labelMat

#训练和测试分类器
#利用训练集训练分类器
datArr,labelArr=loadDataSet('horseColicTraining2.txt')
#得到训练好的分类器
classifierArray=P3_ImplementingAdaBoost.adaBoostTrainDS(datArr,labelArr,10)
#利用测试集测试分类器的分类效果
testArr,testLabelArr=loadDataSet('horseColicTest2.txt')
prediction=P4_Testing.adaClassify(testArr,classifierArray)
#输出错误率
num=shape(mat(labelArr))[1]
errArr=mat(ones((num,1)))
error=errArr[prediction!=mat(testLabelArr).T].sum()
errorRate=float(error)/float(num)
print("the errorRate is:",errorRate)

