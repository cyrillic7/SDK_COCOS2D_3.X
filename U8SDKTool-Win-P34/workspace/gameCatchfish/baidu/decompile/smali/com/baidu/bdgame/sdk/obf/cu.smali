.class public Lcom/baidu/bdgame/sdk/obf/cu;
.super Lcom/baidu/bdgame/sdk/obf/hz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/cu$b;,
        Lcom/baidu/bdgame/sdk/obf/cu$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bdp_basic"

.field private static final b:Ljava/lang/String; = "bdp_announcement"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hz;-><init>()V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$b;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cu;->b(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/cu;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 431
    const-string v0, "bdp_basic"

    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 435
    const-string v0, "bdp_basic"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cu;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 2

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cu;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    return-void
.end method

.method static synthetic g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 2

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cu;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    return-void
.end method

.method private static h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 119
    const-string v0, "bdp_announcement"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cu;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_2e

    .line 121
    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/gu;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/gu;

    move-result-object v0

    .line 123
    :goto_d
    if-eqz v2, :cond_11

    if-nez v0, :cond_16

    .line 125
    :cond_11
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;J)V

    .line 127
    :cond_16
    if-eqz v0, :cond_27

    .line 128
    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/baidu/bdgame/sdk/obf/gu;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    :goto_26
    return-void

    .line 130
    :cond_27
    const/4 v0, -0x2

    const-string v2, "bdp_announcement: format error"

    invoke-interface {p1, v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_26

    :cond_2e
    move-object v0, v1

    goto :goto_d
.end method

.method private static i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/hk;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/hk;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cu$2;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/cu$2;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 156
    return-void
.end method

.method private j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu$a;

    const-string v1, "AnnounceTimeInterval"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cu$4;

    invoke-direct {v2, p0, p2}, Lcom/baidu/bdgame/sdk/obf/cu$4;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 263
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v1, p1, v0}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 264
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 265
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 41
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lg;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    .line 46
    :goto_8
    return v0

    .line 44
    :catch_9
    move-exception v0

    .line 46
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    if-nez p2, :cond_21

    .line 61
    const-string v0, "GetPassword_PayBaidu"

    .line 65
    :cond_5
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AccountType %d invalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_21
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 63
    const-string v0, "GetPassword_Pay91"

    goto :goto_5

    .line 68
    :cond_27
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cu$a;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 70
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 71
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu$a;

    const-string v1, "BaiduServicePhone"

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 79
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v1, p1, v0}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 80
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 81
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/lg;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 165
    const/4 v0, 0x0

    .line 166
    if-nez p2, :cond_21

    .line 167
    const-string v0, "GetPassword_UserBaidu"

    .line 173
    :cond_6
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AccountType %d invalid"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_21
    if-ne p2, v2, :cond_26

    .line 169
    const-string v0, "GetPassword_UserDuoku"

    goto :goto_6

    .line 170
    :cond_26
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 171
    const-string v0, "GetPassword_User91"

    goto :goto_6

    .line 176
    :cond_2c
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cu$a;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 177
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 178
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 179
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu$a;

    const-string v1, "BaiduUserCssUrl"

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 85
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v1, p1, v0}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 86
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 87
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cu$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/cu;->j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 115
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "BaiduPhoneAssistant_SiteUrl"

    .line 194
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cu$a;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 195
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 196
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 197
    return-void
.end method

.method public e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    if-eqz p2, :cond_f

    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 235
    :cond_f
    :goto_f
    return-void

    .line 212
    :cond_10
    const-string v0, "Task_IsOpen"

    .line 213
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cu$a;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cu$3;

    invoke-direct {v2, p0, p2}, Lcom/baidu/bdgame/sdk/obf/cu$3;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/cu$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 233
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 234
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    goto :goto_f
.end method
