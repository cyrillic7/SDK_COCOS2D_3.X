.class final Lcom/baidu/bdgame/sdk/obf/fa$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fa;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fa;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fa;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fa$2;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 6

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayMoney ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$2;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->a(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$2;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->d(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$2;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->e(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$2;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->f(Lcom/baidu/bdgame/sdk/obf/fa;)V

    .line 110
    return-void
.end method
