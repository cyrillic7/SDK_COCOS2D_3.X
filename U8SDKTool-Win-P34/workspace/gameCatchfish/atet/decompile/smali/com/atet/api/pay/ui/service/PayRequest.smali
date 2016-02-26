.class public Lcom/atet/api/pay/ui/service/PayRequest;
.super Lorg/json/JSONObject;


# static fields
.field public static final APPID:Ljava/lang/String; = "appid"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final CPID:Ljava/lang/String; = "cpid"

.field public static final CPPRIVATEINFO:Ljava/lang/String; = "cpprivateinfo"

.field public static final EXORDERNO:Ljava/lang/String; = "exorderno"

.field public static final NOTIFYURL:Ljava/lang/String; = "notifyurl"

.field public static final PARTNERID:Ljava/lang/String; = "partnerid"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final WARESID:Ljava/lang/String; = "waresid"

.field public static final WARESNAME:Ljava/lang/String; = "waresname"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public static l1l111lll1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMQRV+TmX2javfZzumXdkhHoAPk0Sllxm508PSLPv1qGAYPiNIa4hJeEL4F9WjbxhY0ZEsgalcoRccIBtoIXWA6Ley6apOuAMyt0FPWBdd1Cqe0+h7Xeo8oSjkIptmBNwhkn8eJpG4gunWXM5Y3ivESieOT3kWHYXEc+x/fJrd8lAgMBAAECgYAQbKuCP1IqxHg5VwR8WA1OdrLuLVU1HPE+QLeWXPTYrnUeCSsBRh/FWYtpO4j9JUpcwYbzQFbf8IopCF+zkiUMHToBR9229HkjQ+X244/LITWzbKXgVEdgeyETaZPzpRtiOUaH5O1Ao5hWJJO2NIKR5lvdNf5wz5XDn1QoVZEMAQJBAPHJYf3J2SbrwJES4MjpucRauXo7iFuuhk2FAku5eT9UCQIwcZFG9q7nMte7+Z+whZlpDxyLtDSTUlwQGXcdMYECQQDPl/FFJP0re9eUhMugdFMyK4wRdOMVHGYQ4KfqU/NpH9lHkvFJvb1ikac1/DfUlt8qvWnF9ijV7qu37ARK2nelAkAgwPUjWiqumRU3EeWdkfv2W4vwwQvRz6yl57TN6UxBhfLKdyGLWp+kRfGfQ/mm5lTS2WaQqWQ6ExL/IbcxaaUBAkAPhjhXyGVabB96Dtg/fpN+K/2EjK4ytPX5CyPjhTWtxeD01ktPDW5tQaE0i1ENh97WjmWrlTYGkZur3G2Rv3a1AkA+38mcwl3BofvLQkB4+nM+B3ufu9jwWsZHVCw61DGVFwLmyOeTxQ/+Ee8TxSzo8wTO4Aq7uka+VEwKxeBCyNk+"

    invoke-static {p0, v0}, Lcom/atet/api/pay/ui/service/lll11111ll;->l1l111lll1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l1l111lll1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDVYXhCLovhdIsH/jjAD3v77+V6TzWF0jWCzq6Er3eFb0nfuA8S5oUwmp/Hz9kGJ5vKo8laKZukVFvLrMhB408DFmjrwkVpnlreUUEVteRWk/63WR8P4lbI6buihks8qPD6dqVTfLmRCTd93vcw02B7rFldDTwnKrYS5c0yHh667QIDAQAB"

    invoke-static {p0, p1, v0}, Lcom/atet/api/pay/ui/service/lll11111ll;->l1l111lll1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/atet/api/pay/ui/service/PayRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method
