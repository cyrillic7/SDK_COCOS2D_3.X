.class Lcom/baidu/mtjstatsdk/game/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/d;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/game/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/mtjstatsdk/game/d;->b:I

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/game/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/e;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/d;->a:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/d;->b:I

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/game/d;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/d;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Lcom/baidu/mtjstatsdk/game/a/e;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/d;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/d;->d:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
