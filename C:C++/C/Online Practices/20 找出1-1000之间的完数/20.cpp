 #include <stdio.h>
   /**CopyRight@fantasy0707*/
    #define N 1000         //������ⷶΧ
    main()
   {
      int i,j,sum;    //sum�����������֮��
    
      for(i=1;i<N;i++)       //��1��1000���ڵ������γ���
       {  
          sum=0;             //��sum��ֵ��ͬʱҲ�Ƕ���һ�ε�ֵ���
          for(j=1;j<=i/2;j++)   //��������
          {
        if(i%j==0)           // ���������
           {
             sum+=j;         //�ѵ�ǰ�������ۼӵ�sum��                 
           }
          }
       if(sum==i)            //�ж��ǲ���������������֮�͵�������
          {
             printf("%-5d its factors are: ",i);        //�����������
           for(j=1;j<=i/2;j++)                          //�ٴ��ҳ��������������
             {
                 if(i%j==0)                                    //�����������
                 printf("%d,",j);
             }           
           printf("\n");
          }
      }
    }