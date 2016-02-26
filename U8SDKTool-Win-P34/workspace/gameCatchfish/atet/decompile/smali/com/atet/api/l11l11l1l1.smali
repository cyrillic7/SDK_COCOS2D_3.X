.class final Lcom/atet/api/l11l11l1l1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic l1l111lll1:Landroid/app/Activity;

.field private final synthetic l1lll1l1l1:Ljava/lang/String;

.field private final synthetic lll1l111ll:Lcom/atet/api/pay/ui/service/IPayResultCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/atet/api/pay/ui/service/IPayResultCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/atet/api/l11l11l1l1;->l1l111lll1:Landroid/app/Activity;

    iput-object p2, p0, Lcom/atet/api/l11l11l1l1;->l1lll1l1l1:Ljava/lang/String;

    iput-object p3, p0, Lcom/atet/api/l11l11l1l1;->lll1l111ll:Lcom/atet/api/pay/ui/service/IPayResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v0, 0x0

    const/16 v1, 0x3ea

    new-instance v2, Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    iget-object v3, p0, Lcom/atet/api/l11l11l1l1;->l1l111lll1:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/atet/api/l11l11l1l1;->l1lll1l1l1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    :try_start_16
    const-string v3, "content="

    const-string v4, "&sign="

    invoke-static {v2, v3, v4}, Lcom/atet/api/SDKApi;->l1l111lll1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&sign="

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/atet/api/SDKApi;->l1l111lll1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "resultCode"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2f} :catch_76

    move-result v2

    :try_start_30
    const-string v6, "appId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "waresId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "exorderno"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->l1l111lll1(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_66} :catch_7b

    move-result v3

    if-nez v3, :cond_80

    :cond_69
    :goto_69
    iget-object v2, p0, Lcom/atet/api/l11l11l1l1;->l1l111lll1:Landroid/app/Activity;

    new-instance v3, Lcom/atet/api/l11111lll1;

    iget-object v4, p0, Lcom/atet/api/l11l11l1l1;->lll1l111ll:Lcom/atet/api/pay/ui/service/IPayResultCallback;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/atet/api/l11111lll1;-><init>(Lcom/atet/api/l11l11l1l1;Lcom/atet/api/pay/ui/service/IPayResultCallback;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_76
    move-exception v2

    :goto_77
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_69

    :catch_7b
    move-exception v1

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_77

    :cond_80
    move v1, v2

    goto :goto_69
.end method
