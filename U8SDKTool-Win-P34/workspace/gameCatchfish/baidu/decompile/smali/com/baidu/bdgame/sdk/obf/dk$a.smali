.class Lcom/baidu/bdgame/sdk/obf/dk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dk;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/dk;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/dk;Lcom/baidu/bdgame/sdk/obf/dk$1;)V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dk$a;-><init>(Lcom/baidu/bdgame/sdk/obf/dk;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->b(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 165
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/dk;->c(Lcom/baidu/bdgame/sdk/obf/dk;)Lcom/baidu/bdgame/sdk/obf/dl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/dl;->e(Ljava/lang/String;)V

    .line 170
    :cond_30
    :goto_30
    return-void

    .line 167
    :cond_31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->d(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_30

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$a;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->c(Lcom/baidu/bdgame/sdk/obf/dk;)Lcom/baidu/bdgame/sdk/obf/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->p()V

    goto :goto_30
.end method
