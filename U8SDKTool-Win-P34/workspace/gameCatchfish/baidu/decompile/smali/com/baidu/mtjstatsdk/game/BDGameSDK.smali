.class public Lcom/baidu/mtjstatsdk/game/BDGameSDK;
.super Ljava/lang/Object;


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initGame(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    return-void
.end method

.method public static onPurchase(Ljava/lang/String;IDLjava/lang/String;)V
    .registers 13

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onPurchase(Ljava/lang/String;IDLjava/lang/String;)V

    return-void
.end method

.method public static onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-static/range {p7 .. p7}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onUse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onUse(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAccountType(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccountType(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setAge(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAge(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setGender(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setGender(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setLevel(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setLevel(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static setOn(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/a;->a()Lcom/baidu/mtjstatsdk/game/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/mtjstatsdk/game/a;->openExceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setExceptionTurn(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public static setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
