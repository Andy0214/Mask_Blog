.class Lcom/seclover/ctf1/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seclover/ctf1/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seclover/ctf1/Main;

.field private final synthetic val$submit:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/seclover/ctf1/Main;Landroid/widget/Button;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    iput-object p2, p0, Lcom/seclover/ctf1/Main$1;->val$submit:Landroid/widget/Button;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    iget-object v5, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    const-string v6, "ctf1"

    invoke-virtual {v5, v6, v3}, Lcom/seclover/ctf1/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/seclover/ctf1/Main;->access$0(Lcom/seclover/ctf1/Main;Landroid/content/SharedPreferences;)V

    .line 67
    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/seclover/ctf1/Main;->access$1(Lcom/seclover/ctf1/Main;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "isEncrypted"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_43

    move v0, v2

    .line 68
    .local v0, "isEncrypted":Z
    :goto_1e
    if-eqz v0, :cond_52

    .line 70
    iget-object v2, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/seclover/ctf1/Main;->access$2(Lcom/seclover/ctf1/Main;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/seclover/ctf1/Main;->check2(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/seclover/ctf1/Main;->access$3(Lcom/seclover/ctf1/Main;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 75
    iget-object v2, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    const v4, 0x7f050008

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 100
    :goto_42
    return-void

    .end local v0    # "isEncrypted":Z
    :cond_43
    move v0, v3

    .line 67
    goto :goto_1e

    .line 78
    .restart local v0    # "isEncrypted":Z
    :cond_45
    iget-object v2, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    const v4, 0x7f050009

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_42

    .line 83
    :cond_52
    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/seclover/ctf1/Main;->access$2(Lcom/seclover/ctf1/Main;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7c

    .line 85
    :cond_6f
    iget-object v2, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    const v4, 0x7f050003

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_42

    .line 88
    :cond_7c
    iget-object v3, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->flagView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/seclover/ctf1/Main;->access$2(Lcom/seclover/ctf1/Main;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/seclover/ctf1/Main;->check(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/seclover/ctf1/Main;->access$4(Lcom/seclover/ctf1/Main;Ljava/lang/String;)Z

    .line 94
    iget-object v3, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->hint:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/seclover/ctf1/Main;->access$5(Lcom/seclover/ctf1/Main;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v3, p0, Lcom/seclover/ctf1/Main$1;->val$submit:Landroid/widget/Button;

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v3, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    iget-object v4, p0, Lcom/seclover/ctf1/Main$1;->this$0:Lcom/seclover/ctf1/Main;

    # getter for: Lcom/seclover/ctf1/Main;->pref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/seclover/ctf1/Main;->access$1(Lcom/seclover/ctf1/Main;)Landroid/content/SharedPreferences;

    move-result-object v4

    # invokes: Lcom/seclover/ctf1/Main;->saveState(Landroid/content/SharedPreferences;I)V
    invoke-static {v3, v4, v2}, Lcom/seclover/ctf1/Main;->access$6(Lcom/seclover/ctf1/Main;Landroid/content/SharedPreferences;I)V

    goto :goto_42
.end method
