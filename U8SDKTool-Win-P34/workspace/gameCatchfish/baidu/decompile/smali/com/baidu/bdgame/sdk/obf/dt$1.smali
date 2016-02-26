.class final Lcom/baidu/bdgame/sdk/obf/dt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dt;->k()V
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
        "Lcom/baidu/bdgame/sdk/obf/gs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dt;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dt;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gs;)V
    .registers 7

    .prologue
    .line 76
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOrder .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 80
    if-nez p1, :cond_32

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;Lcom/baidu/bdgame/sdk/obf/gs;)Lcom/baidu/bdgame/sdk/obf/gs;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->b(Lcom/baidu/bdgame/sdk/obf/dt;)V

    .line 92
    :goto_31
    return-void

    .line 84
    :cond_32
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 85
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->c(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/gs;

    move-result-object v0

    if-nez v0, :cond_48

    const-string v0, ""

    :goto_44
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->c(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/gs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gs;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 87
    :cond_53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$1;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_31
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 71
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dt$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gs;)V

    return-void
.end method
