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
printf("\n\n                            ��ӭ�����ѯ���棡\n\n");
		printf("                            1.�鿴ȫ������\n\n");
		printf("                            2.�鿴ѧ����Ϣ\n\n");
		printf("                            3.�鿴�γ̻����ܳɼ�����\n\n");
		printf("                            4.�˳�ϵͳ\n\n");
		printf("                            ��ѡ���ܣ�");
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
	printf("\n                        �����봴��������:");
	scanf("%s",shuru);
	key=strcmp(mima,shuru);
	while (flag!=1)
	{
		if (key==0)
		{
			printf("\n\n                        ��ȷ��\n\n");
			flag=1;
		}
		else
		{
			printf("\n\n                        ��������������:");
			scanf("%s",shuru);
	        key=strcmp(mima,shuru);
		}
	}
	printf("          **************************************************\n");
	printf("          *                                                *\n");
	printf("          *             ��ӭ����ѧ���ɼ���ѯϵͳ           *\n");
	printf("          *                                                *\n");
	printf("          **************************************************\n\n\n");
	printf("                            1.����ѧ����Ϣ��\n\n");
	printf("                            2.��ѯѧ���ɼ���\n\n");
	printf("                            ��ѡ����:");
	scanf("%d",&choice1);
	flag=0;
	if (flag==0&&choice1==2)
	{
		printf("                         \n                            ��������ѧ����Ϣ!\n\n");
		printf("                            ϵͳ���Զ������������\n\n");
		choice1=1;
	}
	if (choice1==1)
	{
		printf("                        \n\n                            ������ѧ��������");
		scanf("%d",&n);
		for (i=1;i<=n;i++)
		{
			printf("                       \n                            �������%dλѧ������Ϣ��\n\n",num);
			printf("\n                            ѧ�ţ�");scanf("%d",&stu[i].number);
			printf("\n                            ������");scanf("%s",stu[i].name);
			printf("\n                            �Ա�(1.�� 2.Ů)��");scanf("%d",&stu[i].sex);
			printf("\n                            ���䣺");scanf("%d",&stu[i].age);
			printf("\n                            ���᣺");scanf("%s",stu[i].place);
			printf("\n                            ѧԺ��");scanf("%s",stu[i].faculty);
			printf("\n                            �绰��");scanf("%s",stu[i].phone);
			printf("\n                            email:");scanf("%s",stu[i].email);
			printf("\n                            qq:");scanf("%s",stu[i].qq);
			printf("\n                            ���ĳɼ���");scanf("%d",&stu[i].chinese);
			printf("\n                            ��ѧ�ɼ���");scanf("%d",&stu[i].math);
			printf("\n                            Ӣ��ɼ���");scanf("%d",&stu[i].english);
			printf("\n                            רҵ�γɼ���");scanf("%d",&stu[i].zhuanye);
			
			stu[i].total=stu[i].chinese+stu[i].math+stu[i].english+stu[i].zhuanye;
		    num++;
		}
		printf("\n                            ���潫�Զ������ѯ���棡\n\n");
	}
	    printf("                            ��ӭ�����ѯ���棡\n\n");
		printf("                            1.�鿴ȫ������\n\n");
		printf("                            2.�鿴ѧ����Ϣ\n\n");
		printf("                            3.�鿴�γ̻����ܳɼ�����\n\n");
		printf("                            4.�˳�ϵͳ\n\n");
		printf("                            ��ѡ���ܣ�");
		scanf("%d",&choice2);
		while (choice2!=4)
		{
			if (choice2==1)
			{
				printf("\n\n                            ȫ��������%d��\n\n",n);
			}
			else if (choice2==2)
			{
				printf("\n\n                            ������Ҫ���ҵ�ͬѧ��ѧ�ţ�");
				scanf("%d",&search);
				for (i=1;i<=n;i++)
				{
					if (stu[i].number==search)
					{
						printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
						printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						printf("                            ������%s\n\n",stu[i].name);
						printf("                            �Ա�");
						if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
						printf("                            ���䣺%d\n\n",stu[i].age);
						printf("                            ���᣺%s\n\n",stu[i].place);
						printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						printf("                            �绰��%s\n\n",stu[i].phone);
						printf("                            email:%s\n\n",stu[i].email);
						printf("                            qq:%s\n\n",stu[i].qq);
						flag2=1;
					}
				}
				if (flag2==0)
				{
					printf("                            �������ҵ�ͬѧ�������ݿ����棡\n\n");
				}
			}
			else if (choice2==3)
			{
			  while(choice4!=6)
			  {
			  	printf("\n\n                            1.����\n\n");
			  	printf("                            2.��ѧ\n\n");
			  	printf("                            3.Ӣ��\n\n");
			  	printf("                            4.רҵ��\n\n");
			  	printf("                            5.�ܳɼ�\n\n");
			  	printf("                            6.�˳�\n\n"); 
			  	printf("                            ��ѡ������Ķ���");
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
					  	printf("\n\n                            %d.%s:%d��",i,stu[j].name,stu[j].chinese);
					  }
				    }
			      }
				    
					    printf("\n\n                            �Ƿ���Ҫ����ѧ����Ϣ��");
					    printf("\n\n                            ���ѡ��1.�� 2.��:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            ������Ҫ��ѯͬѧ������:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
					 	           printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						           printf("                            ������%s\n\n",stu[i].name);
						           printf("                            �Ա�");
						           if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
					 	           printf("                            ���䣺%d\n\n",stu[i].age);
						           printf("                            ���᣺%s\n\n",stu[i].place);
						           printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						           printf("                            �绰��%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            �Ƿ��˳���");
								   printf("\n\n                            ���ѡ��(1.�� 2.��):");
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
					  	printf("\n\n                            %d.%s:%d��",i,stu[j].name,stu[j].math);
					  }
				    }
			      }
				    
					    printf("\n\n                            �Ƿ���Ҫ����ѧ����Ϣ��");
					    printf("\n\n                            ���ѡ��1.�� 2.��:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            ������Ҫ��ѯͬѧ������:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
					 	           printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						           printf("                            ������%s\n\n",stu[i].name);
						           printf("                            �Ա�");
						           if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
					 	           printf("                            ���䣺%d\n\n",stu[i].age);
						           printf("                            ���᣺%s\n\n",stu[i].place);
						           printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						           printf("                            �绰��%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            �Ƿ��˳���");
								   printf("\n\n                            ���ѡ��(1.�� 2.��):");
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
					  	printf("\n\n                            %d.%s:%d��",i,stu[j].name,stu[j].english);
					  }
				    }
			      }
				    
					    printf("\n\n                            �Ƿ���Ҫ����ѧ����Ϣ��");
					    printf("\n\n                            ���ѡ��1.�� 2.��:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            ������Ҫ��ѯͬѧ������:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
					 	           printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						           printf("                            ������%s\n\n",stu[i].name);
						           printf("                            �Ա�");
						           if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
					 	           printf("                            ���䣺%d\n\n",stu[i].age);
						           printf("                            ���᣺%s\n\n",stu[i].place);
						           printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						           printf("                            �绰��%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            �Ƿ��˳���");
								   printf("\n\n                            ���ѡ��(1.�� 2.��):");
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
					  	printf("\n\n                            %d.%s:%d��",i,stu[j].name,stu[j].zhuanye);
					  }
				    }
			      }
				    
					    printf("\n\n                            �Ƿ���Ҫ����ѧ����Ϣ��");
					    printf("\n\n                            ���ѡ��1.�� 2.��:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            ������Ҫ��ѯͬѧ������:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
					 	           printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						           printf("                            ������%s\n\n",stu[i].name);
						           printf("                            �Ա�");
						           if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
					 	           printf("                            ���䣺%d\n\n",stu[i].age);
						           printf("                            ���᣺%s\n\n",stu[i].place);
						           printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						           printf("                            �绰��%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            �Ƿ��˳���");
								   printf("\n\n                            ���ѡ��(1.�� 2.��):");
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
					  	printf("\n\n                            %d.%s:�ܷ�:%d��",i,stu[j].name,stu[j].total);
					  }
				    }
			      }
				    
					    printf("\n\n                            �Ƿ���Ҫ����ѧ����Ϣ��");
					    printf("\n\n                            ���ѡ��1.�� 2.��:");
					    scanf("%d",&choice5);
					    while (choice5!=2)
					    {
					    	printf("\n\n                            ������Ҫ��ѯͬѧ������:");
					    	scanf("%d",&rank2);
					    	for (i=1;i<=n;i++)
					    	{
					    		if (stu[i].rank==rank2)
					    		{
					    		   printf("\n\n                            ��������ͬѧ����Ϣ���£�\n\n");
					 	           printf("                            ѧ�ţ�%d\n\n",stu[i].number);
						           printf("                            ������%s\n\n",stu[i].name);
						           printf("                            �Ա�");
						           if (stu[i].sex==1)
						{
							printf("��\n\n");
						}
						else
						{
							printf("Ů\n\n");
						}
					 	           printf("                            ���䣺%d\n\n",stu[i].age);
						           printf("                            ���᣺%s\n\n",stu[i].place);
						           printf("                            ѧԺ��%s\n\n",stu[i].faculty);
						           printf("                            �绰��%s\n\n",stu[i].phone);
						           printf("                            email:%s\n\n",stu[i].email);
						           printf("                            qq:%s\n\n",stu[i].qq);
								   printf("\n\n                            �Ƿ��˳���");
								   printf("\n\n                            ���ѡ��(1.�� 2.��):");
								   scanf("%d",&choice5);	
								}
							}
						}
					  }
				  }
			   } 
			   	
			
			printf("\n\n                            �Ƿ񷵻ز��ҽ��棿\n\n");
			printf("                            ��ѡ��1.���� 2.�˳�ϵͳ����");
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
		
		printf("\n\n                            �ټ���"); 
	
	system("pause");
}

		              
