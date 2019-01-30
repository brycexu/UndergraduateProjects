# coding:utf8
'''
Created on 2018年1月30日
@author: XuXianda

'''
import P2_CreatingTheTree
import P3_TestingTheTree
import Extra_PlottingTheTree
#------------------------示例：使用决策树预测隐形眼镜类型----------------
def predictLensesType(filename):
    #打开文本数据
    fr=open(filename)
    #将文本数据的每一个数据行按照tab键分割，并依次存入lenses
    lenses=[inst.strip().split('\t') for inst in fr.readlines()]
    #创建并存入特征标签列表
    lensesLabels=['age','prescript','astigmatic','tearRate']
    #根据继续文件得到的数据集和特征标签列表创建决策树
    lensesTree=P2_CreatingTheTree.createTree(lenses,lensesLabels)
    return lensesTree

myTree=predictLensesType('lenses.txt')
lensesLabels=['age','prescript','astigmatic','tearRate']
testVec=['pre','myope','yes','normal']
print(P3_TestingTheTree.classify(myTree, lensesLabels, testVec))
Extra_PlottingTheTree.createPlot(myTree)