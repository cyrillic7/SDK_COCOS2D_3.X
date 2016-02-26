.class Lcom/baidu/paysdk/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/api/ILoginBackListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/android/pay/PayCallBack;

.field final synthetic d:Lcom/baidu/paysdk/datamodel/PayRequest;

.field final synthetic e:Lcom/baidu/paysdk/api/BaiduPay;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/api/BaiduPay;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Lcom/baidu/paysdk/datamodel/PayRequest;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/paysdk/api/a;->e:Lcom/baidu/paysdk/api/BaiduPay;

    iput-object p2, p0, Lcom/baidu/paysdk/api/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/paysdk/api/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/paysdk/api/a;->c:Lcom/baidu/android/pay/PayCallBack;

    iput-object p5, p0, Lcom/baidu/paysdk/api/a;->d:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 9

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokenValue"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/paysdk/api/a;->e:Lcom/baidu/paysdk/api/BaiduPay;

    iget-object v1, p0, Lcom/baidu/paysdk/api/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/paysdk/api/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/paysdk/api/a;->c:Lcom/baidu/android/pay/PayCallBack;

    iget-object v5, p0, Lcom/baidu/paysdk/api/a;->d:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-static/range {v0 .. v5}, Lcom/baidu/paysdk/api/BaiduPay;->a(Lcom/baidu/paysdk/api/BaiduPay;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;Lcom/baidu/paysdk/datamodel/PayRequest;)V

    return-void
.end method
