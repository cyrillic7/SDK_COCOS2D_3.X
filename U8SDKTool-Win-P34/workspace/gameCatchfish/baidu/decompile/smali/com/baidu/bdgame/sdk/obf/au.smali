.class public Lcom/baidu/bdgame/sdk/obf/au;
.super Lcom/baidu/bdgame/sdk/obf/y;
.source "SourceFile"


# static fields
.field private static final a:S = 0x2fs


# instance fields
.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/au;
    .registers 7

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/au;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/au;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 34
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/au;->b(I)V

    .line 35
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/au;->a(S)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/au;->b:Ljava/lang/String;

    .line 37
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/au;->g:Ljava/lang/String;

    .line 38
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/au;->h:Ljava/lang/String;

    .line 39
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/ai;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;

    .line 62
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 66
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 67
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/au;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 79
    :goto_29
    return-object v0

    .line 71
    :cond_2a
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/s;-><init>()V

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    .line 73
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v5}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v4}, Lcom/baidu/bdgame/sdk/obf/ai;->d(Z)V

    .line 78
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "ThirdPlatformType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/au;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "OAuthParams"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/au;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/au;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 49
    const-string v1, "OAuthVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/au;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :goto_22
    return-object v0

    .line 51
    :cond_23
    const-string v1, "OAuthVersion"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/y;->a(Z)V

    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_38

    .line 105
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 88
    :pswitch_5
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 90
    const-string v1, "AccessToken"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 94
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ah;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ah;-><init>()V

    .line 95
    const-string v2, "AlertMessageTitle"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ah;->a(Ljava/lang/String;)V

    .line 96
    const-string v2, "AlertMessageBody"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ah;->b(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ah;)V

    .line 99
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_3

    .line 85
    :pswitch_data_38
    .packed-switch 0x90ec
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
