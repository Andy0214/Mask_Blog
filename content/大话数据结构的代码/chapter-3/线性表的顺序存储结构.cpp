#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

#define MAXSIZE 20 /*存储空间初始分量*/

typedef int ElemType;

typedef struct 
{
	ElemType data[MAXSIZE];
	int length;
}SqList;



typedef int Status;

Status GetElem(SqList L,int i,ElemType *e)
{
	if (L.length == 0 || i<1 || i>L.length)
	{
		/* code */
		return ERROR;
	}
	*e = L.data[i-1];
	return OK;
}



Status ListInsert(SqList *L,int i,ElemType e)
{
	int k;
	if (L->length == MAXSIZE) /*顺序线性表已经满*/
	{
		/* code */
		return ERROR;
	}
	if (i < 1 || i > L->length+1)/*i不在范围内时*/
	{
		/* code */
		return ERROR;
	}
	if (i <= L->length)/*若插入数据位置不在表尾*/
	{
		/* code */
		for (k = L->length-1;k > i-1;k--)
		{
			/* code */
			L->data[k+1] = L->data[k];
		}

		L->data[i-1] = e;
		L->length++;
		return OK;

	}
}


Status ListDelete(SqList *L,int i,ElemType *e)
{
	int k;
	if (L->length==0)/*线性表为空*/
	{
		/* code */
		return ERROR;
	}
	if (i<1 || i>L->length)/*删除位置不正确*/
	{
		/* code */
		return ERROR;
	}
	*e = L->data[i-1];
	if (i<L->length)/*如果删除的不是最后位置*/
	{
		/* code */
		for (k = i; k<L->length;k++)
		{
			/* code */
			L-> data[k-1] = L->data[k];
		}
	}
	L->length--;
	return OK;
}