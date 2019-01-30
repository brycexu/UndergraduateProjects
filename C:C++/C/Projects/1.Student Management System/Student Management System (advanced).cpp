#include<stdio.h>
#include<stdlib.h>
#include<string.h>
struct info
{
	int number;
	char name[20];
	int sex;
	int age;
	char place[30];
	char faculty[30];
	char phone[20];
	char email[30];
	char qq[20];
	int chinese;
	int math;
	int english;
	int zhuanye;
	int total;
	int rank;
};
int menu2 (int z)
{
printf("\n\n                            欢迎进入查询界面！\n\n");
		printf("                            1.查看全班人数\n\n");
		printf("                            2.查看学生信息\n\n");
		printf("                            3.查看课程或者总成绩排名\n\n");
		printf("                            4.退出系统\n\n");
		printf("                            请选择功能：");
		scanf("%d",&z);
		return z;
}
int main (void)
{
	struct info stu[30];
	int choice1,flag,n,i,num,choice2,choice3,search,flag2,z,choice4,choice5,j,rank2,key,flag3;
	i=1;num=1;flag2=0;stu[0].rank=0;flag3=0;
	char temp[30]={0};
	const char mima[]="xuxianda";
	char shuru[30];
	printf("\n                        请输入创建者名字:");
	scanf("%s",shuru);
	key=strcmp(mima,shuru);
	while (flag!=1)
	{
		if (key==0)
		{
			printf("\n\n                        正确！\n\n");
			flag=1;
		}
		else
		{
			printf("\n\n                        错误！请重新输入:");
			scanf("%s",shuru);
	        key=strcmp(mima,shuru);
		}
	}
	printf("          **************************************************\n");
	printf("          *                                                *\n");
	printf("          *             欢迎进入学生成绩查询系统           *\n");
	printf("          *                                                *\n");
	printf("          **************************************************\n\n\n");
	printf("                            1.输入学生信息。\n\n");
	printf("                            2.查询学生成绩。\n\n");
	printf("                            请选择功能:");
	scanf("%d",&choice1);
	flag=0;
	if (flag==0&&choice1==2)
	{
		printf("                         \n                            请先输入学生信息!\n\n");
		printf("                            系统将自动跳到输入界面\n\n");
		choice1=1;
	}
	if (choice1==1)
	{
		printf("                        \n\n                            请输入学生人数：");
		scanf("%d",&n);
		for (i=1;i<=n;i++)
		{
			printf("                       \n                            请输入第%d位学生的信息：\n\n",num);
			printf("\n                            学号：");scanf("%d",&stu[i].number);
			printf("\n                            姓名：");scanf("%s",stu[i].name);
			printf("\n                            性别(1.男 2.女)：");scanf("%d",&stu[i].sex);
			printf("\n                            年龄：");scanf("%d",&stu[i].age);
			printf("\n                            籍贯：");scanf("%s",stu[i].place);
			printf("\n                            学院：");scanf("%s",stu[i].faculty);
			printf("\n                            电话：");scanf("%s",stu[i].phone);
			printf("\n                            email:");scanf("%s",stu[i].email);
			printf("\n                            qq:");scanf("%s",stu[i].qq);
			printf("\n                            语文成绩：");scanf("%d",&stu[i].chinese);
			printf("\n                            数学成绩：");scanf("%d",&stu[i].math);
			printf("\n                            英语成绩：");scanf("%d",&stu[i].english);
			printf("\n                            专业课成绩：");scanf("%d",&stu[i].zhuanye);
			
			stu[i].total=stu[i].chinese+stu[i].math+stu[i].english+stu[i].zhuanye;
		    num++;
		}
		printf("\n                            下面将自动进入查询界面！\n\n");
	}
	    printf("                            欢迎进入查询界面！\n\n");
		printf("                            1.查看全班人数\n\n");
		printf("                            2.查看学生信息\n\n");
		printf("                            3.查看课程或者总成绩排名\n\n");
		printf("                            4.退出系统\n\n");
		printf("                            请选择功能：");
		scanf("%d",&choice2);
		while (choice2!=4)
		{
			if (choice2==1)
			{
				printf("\n\n                            全班人数是%d人\n\n",n);
			}
			else if (choice2==2)
			{
				printf("\n\n                            请输入要查找的同学的学号：");
				scanf("%d",&search);
				for (i=1;i<=n;i++)
				{
					if (stu[i].number==search)
					{
						printf("\n\n                            您所查找同学的信息如下：\n\n");
						printf("                            学号：%d\n\n",stu[i].number);
						printf("                            姓名：%s\n\n",stu[i].name);
						printf("                            性别：");
						if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
						printf("                            年龄：%d\n\n",stu[i].age);
						printf("                            籍贯：%s\n\n",stu[i].place);
						printf("                            学院：%s\n\n",stu[i].faculty);
						printf("                            电话：%s\n\n",stu[i].phone);
						printf("                            email:%s\n\n",stu[i].email);
						printf("                            qq:%s\n\n",stu[i].qq);
						flag2=1;
					}
				}
				if (flag2==0)
				{
					printf("                            您所查找的同学不在数据库里面！\n\n");
				}
			}
			else if (choice2==3)
			{
			  while(choice4!=6)
			  {
			  	printf("\n\n                            1.语文\n\n");
			  	printf("                            2.数学\n\n");
			  	printf("                            3.英语\n\n");
			  	printf("                            4.专业课\n\n");
			  	printf("                            5.总成绩\n\n");
			  	printf("                            6.退出\n\n"); 
			  	printf("                            请选择排序的对象：");
				scanf("%d",&choice4); 
				if (choice4==6)
				{
					break;
				}
			  	if (choice4==1)
			  {
			  	    for (i=1;i<=n;i++)
			  	    {
			  	    	temp[i]=stu[i].chinese;
					  }
					for (i=1;i<n;i++)
				  {
				  	for (j=1;j<n-i+1;j++)
				  	{
				  		if (temp[j]<temp[j+1])
						 {
						 	temp[0]=temp[j];
						 	temp[j]=temp[j+1];
						 	temp[j+1]=temp[0];
						  } 
					  }
					  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (temp[i]==stu[j].chinese)
					  {
					  stu[j].rank=i;
				}
				}
				  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (i==stu[j].rank)
					  {
					  	printf("\n\n                            %d.%s:%d分",i,stu[j].name,stu[j].chinese);
					  }
				    }
			      }
				    
					    printf("\n\n                            是否需要查找学生信息？");
					    printf("\n\n                            你的选择（1.是 2.否）:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            请输入要查询同学的排名:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            您所查找同学的信息如下：\n\n");
					 	           printf("                            学号：%d\n\n",stu[i].number);
						           printf("                            姓名：%s\n\n",stu[i].name);
						           printf("                            性别：");
						           if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
					 	           printf("                            年龄：%d\n\n",stu[i].age);
						           printf("                            籍贯：%s\n\n",stu[i].place);
						           printf("                            学院：%s\n\n",stu[i].faculty);
						           printf("                            电话：%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            是否退出？");
								   printf("\n\n                            你的选择(1.否 2.是):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }	
					  if (choice4==2)
					  {
			  	    for (i=1;i<=n;i++)
			  	    {
			  	    	temp[i]=stu[i].math;
					  }
					for (i=1;i<n;i++)
				  {
				  	for (j=1;j<n-i+1;j++)
				  	{
				  		if (temp[j]<temp[j+1])
						 {
						 	temp[0]=temp[j];
						 	temp[j]=temp[j+1];
						 	temp[j+1]=temp[0];
						  } 
					  }
					  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (temp[i]==stu[j].math)
					  {
					  stu[j].rank=i;
				}
				}
				  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (i==stu[j].rank)
					  {
					  	printf("\n\n                            %d.%s:%d分",i,stu[j].name,stu[j].math);
					  }
				    }
			      }
				    
					    printf("\n\n                            是否需要查找学生信息？");
					    printf("\n\n                            你的选择（1.是 2.否）:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            请输入要查询同学的排名:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            您所查找同学的信息如下：\n\n");
					 	           printf("                            学号：%d\n\n",stu[i].number);
						           printf("                            姓名：%s\n\n",stu[i].name);
						           printf("                            性别：");
						           if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
					 	           printf("                            年龄：%d\n\n",stu[i].age);
						           printf("                            籍贯：%s\n\n",stu[i].place);
						           printf("                            学院：%s\n\n",stu[i].faculty);
						           printf("                            电话：%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            是否退出？");
								   printf("\n\n                            你的选择(1.否 2.是):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }	
					  if (choice4==3)
					  {
			  	    for (i=1;i<=n;i++)
			  	    {
			  	    	temp[i]=stu[i].english;
					  }
					for (i=1;i<n;i++)
				  {
				  	for (j=1;j<n-i+1;j++)
				  	{
				  		if (temp[j]<temp[j+1])
						 {
						 	temp[0]=temp[j];
						 	temp[j]=temp[j+1];
						 	temp[j+1]=temp[0];
						  } 
					  }
					  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (temp[i]==stu[j].english)
					  {
					  stu[j].rank=i;
				}
				}
				  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (i==stu[j].rank)
					  {
					  	printf("\n\n                            %d.%s:%d分",i,stu[j].name,stu[j].english);
					  }
				    }
			      }
				    
					    printf("\n\n                            是否需要查找学生信息？");
					    printf("\n\n                            你的选择（1.是 2.否）:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            请输入要查询同学的排名:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            您所查找同学的信息如下：\n\n");
					 	           printf("                            学号：%d\n\n",stu[i].number);
						           printf("                            姓名：%s\n\n",stu[i].name);
						           printf("                            性别：");
						           if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
					 	           printf("                            年龄：%d\n\n",stu[i].age);
						           printf("                            籍贯：%s\n\n",stu[i].place);
						           printf("                            学院：%s\n\n",stu[i].faculty);
						           printf("                            电话：%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            是否退出？");
								   printf("\n\n                            你的选择(1.否 2.是):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }	
					  if (choice4==4)
					  {
			  	    for (i=1;i<=n;i++)
			  	    {
			  	    	temp[i]=stu[i].zhuanye;
					  }
					for (i=1;i<n;i++)
				  {
				  	for (j=1;j<n-i+1;j++)
				  	{
				  		if (temp[j]<temp[j+1])
						 {
						 	temp[0]=temp[j];
						 	temp[j]=temp[j+1];
						 	temp[j+1]=temp[0];
						  } 
					  }
					  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (temp[i]==stu[j].zhuanye)
					  {
					  stu[j].rank=i;
				}
				}
				  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (i==stu[j].rank)
					  {
					  	printf("\n\n                            %d.%s:%d分",i,stu[j].name,stu[j].zhuanye);
					  }
				    }
			      }
				    
					    printf("\n\n                            是否需要查找学生信息？");
					    printf("\n\n                            你的选择（1.是 2.否）:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            请输入要查询同学的排名:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            您所查找同学的信息如下：\n\n");
					 	           printf("                            学号：%d\n\n",stu[i].number);
						           printf("                            姓名：%s\n\n",stu[i].name);
						           printf("                            性别：");
						           if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
					 	           printf("                            年龄：%d\n\n",stu[i].age);
						           printf("                            籍贯：%s\n\n",stu[i].place);
						           printf("                            学院：%s\n\n",stu[i].faculty);
						           printf("                            电话：%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            是否退出？");
								   printf("\n\n                            你的选择(1.否 2.是):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }	
					  if (choice4==5)
					  {
			  	    for (i=1;i<=n;i++)
			  	    {
			  	    	temp[i]=stu[i].total;
					  }
					for (i=1;i<n;i++)
				  {
				  	for (j=1;j<n-i+1;j++)
				  	{
				  		if (temp[j]<temp[j+1])
						 {
						 	temp[0]=temp[j];
						 	temp[j]=temp[j+1];
						 	temp[j+1]=temp[0];
						  } 
					  }
					  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (temp[i]==stu[j].total)
					  {
					  stu[j].rank=i;
				}
				}
				  }
				  for (i=1;i<=n;i++)
				  {
				  	for (j=1;j<=n;j++)
				  	{
					  if (i==stu[j].rank)
					  {
					  	printf("\n\n                            %d.%s:总分:%d分",i,stu[j].name,stu[j].total);
					  }
				    }
			      }
				    
					    printf("\n\n                            是否需要查找学生信息？");
					    printf("\n\n                            你的选择（1.是 2.否）:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            请输入要查询同学的排名:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            您所查找同学的信息如下：\n\n");
					 	           printf("                            学号：%d\n\n",stu[i].number);
						           printf("                            姓名：%s\n\n",stu[i].name);
						           printf("                            性别：");
						           if (stu[i].sex==1)
						{
							printf("男\n\n");
						}
						else
						{
							printf("女\n\n");
						}
					 	           printf("                            年龄：%d\n\n",stu[i].age);
						           printf("                            籍贯：%s\n\n",stu[i].place);
						           printf("                            学院：%s\n\n",stu[i].faculty);
						           printf("                            电话：%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            是否退出？");
								   printf("\n\n                            你的选择(1.否 2.是):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }
				  }
			   } 
			   	
			
			printf("\n\n                            是否返回查找界面？\n\n");
			printf("                            请选择（1.返回 2.退出系统）：");
			scanf("%d",&choice3);
			if (choice3==2)
			{
				choice2=4;
			}
			else
			{
				choice2=menu2(z);
			}
		}
		
		printf("\n\n                            再见！"); 
	
	system("pause");
}

		              
