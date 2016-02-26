.class final Lcom/baidu/android/pushservice/util/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/util/j;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    const-string v0, "https://cp01-rdqa-dev404.cp01.baidu.com:8443/rest/2.0/zwifi/validate"

    iget-object v1, p0, Lcom/baidu/android/pushservice/util/j;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
