.class public Lcom/baidu/android/pushservice/message/b;
.super Lcom/baidu/android/pushservice/message/c;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/e;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/e;->d:[B

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage MSG_ID_HANDSHAKE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :try_start_27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2c} :catch_5a

    :goto_2c
    if-eqz v1, :cond_34

    const-string v3, "ret"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_34
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_52

    sget-object v1, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_ID_HANDSHAKE : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    if-nez v0, :cond_66

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/d/b;->a(Landroid/content/Context;)V

    :cond_59
    :goto_59
    return v0

    :catch_5a
    move-exception v1

    sget-object v3, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2c

    :cond_66
    const/16 v1, 0x138b

    if-ne v0, v1, :cond_70

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/d/b;->a(Landroid/content/Context;)V

    goto :goto_59

    :cond_70
    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_59

    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/baidu/android/pushservice/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/f;->j(Landroid/content/Context;)V

    goto :goto_59
.end method
