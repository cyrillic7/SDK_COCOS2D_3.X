.class public Lcom/baidu/android/pushservice/f/u;
.super Lcom/baidu/android/pushservice/f/p;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public v:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/f/p;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/android/pushservice/f/u;->v:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/f/p;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/f/p;-><init>(Lcom/baidu/android/pushservice/f/p;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/android/pushservice/f/u;->v:I

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action_name"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/baidu/android/pushservice/f/u;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "network_status"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "lbsInfo"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "msg_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_38
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "ssid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_47
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "bssid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "channel"

    iget-object v2, p0, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_65
    iget v1, p0, Lcom/baidu/android/pushservice/f/u;->v:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_71

    const-string v1, "msg_type"

    iget v2, p0, Lcom/baidu/android/pushservice/f/u;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_71
    return-object v0
.end method
