.class final Lcom/baidu/bdgame/sdk/obf/dk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dk;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dk;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v3, 0x10

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_27

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$1;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    :cond_27
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    return-void
.end method
