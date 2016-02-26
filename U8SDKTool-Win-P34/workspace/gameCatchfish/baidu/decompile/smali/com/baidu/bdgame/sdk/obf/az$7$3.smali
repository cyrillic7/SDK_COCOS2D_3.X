.class final Lcom/baidu/bdgame/sdk/obf/az$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az$7;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az$7;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az$7;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$7$3;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$3;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 357
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$3;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7$3;->a:Lcom/baidu/bdgame/sdk/obf/az$7;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_34
    return-void
.end method
