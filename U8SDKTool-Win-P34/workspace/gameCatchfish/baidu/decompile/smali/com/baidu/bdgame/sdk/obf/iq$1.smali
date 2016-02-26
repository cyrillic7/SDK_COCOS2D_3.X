.class final Lcom/baidu/bdgame/sdk/obf/iq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/iq;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/iq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/iq;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iq$1;->b:Lcom/baidu/bdgame/sdk/obf/iq;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/iq$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 95
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/iq$1;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaiduServicePhone resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneNo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_36

    .line 101
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/iq;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq$1;->b:Lcom/baidu/bdgame/sdk/obf/iq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iq$1;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Lcom/baidu/bdgame/sdk/obf/iq;Landroid/widget/TextView;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq$1;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_36
    return-void
.end method
