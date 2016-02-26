.class final Lcom/atet/api/l1l111lll1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic l1l111lll1:Landroid/app/Activity;

.field private final synthetic l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/IAccountExCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/atet/api/l1l111lll1;->l1l111lll1:Landroid/app/Activity;

    iput-object p2, p0, Lcom/atet/api/l1l111lll1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    new-instance v0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    iget-object v1, p0, Lcom/atet/api/l1l111lll1;->l1l111lll1:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/atet/api/SDKApi;->l1l111lll1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7d2

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "username"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_30} :catch_45

    move-result-object v5

    :cond_31
    :goto_31
    invoke-static {v5}, Lcom/atet/api/SDKApi;->l1l111lll1(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/atet/api/SDKApi;->l1l111lll1(J)V

    iget-object v0, p0, Lcom/atet/api/l1l111lll1;->l1l111lll1:Landroid/app/Activity;

    new-instance v1, Lcom/atet/api/l1lll1l1l1;

    iget-object v3, p0, Lcom/atet/api/l1l111lll1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/atet/api/l1lll1l1l1;-><init>(Lcom/atet/api/l1l111lll1;Lcom/atet/api/pay/ui/service/IAccountExCallback;ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_31
.end method
