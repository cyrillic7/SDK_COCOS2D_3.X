.class final Lcom/baidu/bdgame/sdk/obf/et$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/eu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/et;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/et;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/et;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 8

    .prologue
    .line 131
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

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->a(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->c(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->e(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/et;->d(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 141
    :goto_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->h(Lcom/baidu/bdgame/sdk/obf/et;)V

    .line 142
    return-void

    .line 138
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->f(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$2;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->g(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    goto :goto_4c
.end method
