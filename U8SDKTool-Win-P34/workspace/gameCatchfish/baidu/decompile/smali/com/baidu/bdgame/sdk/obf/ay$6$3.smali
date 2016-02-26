.class final Lcom/baidu/bdgame/sdk/obf/ay$6$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$6;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$6;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$6;)V
    .registers 2

    .prologue
    .line 571
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$3;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$3;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 577
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$3;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$3;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_34
    return-void
.end method
