#define OK 1
#define ERROR 0
#define TRUE 1
#define FALSE 0

typedef int ElemType;

typedef struct Node
{
	ElemType data;
	struct Node *next;
}Node;

typedef struct Node *LinkList;


Status GetElem(LinkList L,int i,ElemType *e)
{
	int j;
	LinkList p;
	p = L->next;
	j = 1;  /*j为计数器*/

	while(p && j < i)
	{
		p = p -> next;
		++j;
	}
	if (!p || j>i)
	{
		/* code */
		return ERROR; /*第i个元素不存在*/
	}
	*e = p->data;
	return OK;
}


Status ListInsert(LinkList *L,int i,ElemType e)
{
	int j;
	LinkList p,s;
	p = *L;
	j = 1;
	while( p && j < i) /*寻找第i个结点*/
	{
		p = p ->next;
		++j;
	}
	if (!p || j > i) /*第i个元素不存在*/
	{
		/* code */
		return ERROR;
	}
	s = (LinkList) malloc (sizeof(Node));/**生成新的结点*/
	s->data = e;
	s->next = p->next;
	p->next = s;
	return OK;
}


Status ListDelete(LinkList *L,int i,ElemType *e)
{
	int j;
	LinkList p,q;
	p = *L;
	j = 1;

	while(p->next && j < i){
		p = p -> next;
		++j;
	}
	if (!(p->next) || j>i)
	{
		/* code */
		return ERROR;
	}

	q = p->next;
	p -> next = q -> next;
	*e = q->data;
	free(q);
	return OK;
}