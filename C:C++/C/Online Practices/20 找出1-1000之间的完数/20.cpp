 #include <stdio.h>
   /**CopyRight@fantasy0707*/
    #define N 1000         //完数求解范围
    main()
   {
      int i,j,sum;    //sum用来存放因子之和
    
      for(i=1;i<N;i++)       //对1到1000以内的数依次尝试
       {  
          sum=0;             //给sum赋值，同时也是对上一次的值清空
          for(j=1;j<=i/2;j++)   //查找因子
          {
        if(i%j==0)           // 如果是因子
           {
             sum+=j;         //把当前的因子累加到sum中                 
           }
          }
       if(sum==i)            //判断是不是完数，即因子之和等于自身
          {
             printf("%-5d its factors are: ",i);        //是完数，输出
           for(j=1;j<=i/2;j++)                          //再次找出这个完数的因子
             {
                 if(i%j==0)                                    //输出各个因子
                 printf("%d,",j);
             }           
           printf("\n");
          }
      }
    }