.class public Lcom/baidu/bdgame/sdk/obf/ml;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ml$a;,
        Lcom/baidu/bdgame/sdk/obf/ml$b;,
        Lcom/baidu/bdgame/sdk/obf/ml$c;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field final b:J

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/mm;

.field private g:Landroid/os/Handler;

.field private h:Lcom/baidu/bdgame/sdk/obf/ml$c;

.field private i:Lcom/baidu/bdgame/sdk/obf/ml$b;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "0"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ml;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    .line 45
    iput-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->j:Z

    .line 48
    iput-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->k:Z

    .line 177
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->b:J

    .line 51
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->c:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->d:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ml;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$c;)Lcom/baidu/bdgame/sdk/obf/ml$c;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/ml;
    .registers 5

    .prologue
    .line 58
    const-string v0, "com.baidu.searchbox.action.HandleSSOService"

    .line 59
    const-string v0, "com.baidu.searchbox"

    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.baidu.searchbox.action.HandleSSOService"

    const-string v3, "com.baidu.searchbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ml;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_11

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 150
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lorg/json/JSONObject;)V

    .line 161
    :cond_11
    :goto_11
    return-void

    .line 152
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ml$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method public static b(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/ml;
    .registers 5

    .prologue
    .line 66
    const-string v0, "com.baidu.appsearch.action.HandleSSOService"

    .line 67
    const-string v0, "com.baidu.appsearch"

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.baidu.appsearch.action.HandleSSOService"

    const-string v3, "com.baidu.appsearch"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ml;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->k:Z

    if-eqz v0, :cond_5

    .line 174
    :cond_4
    :goto_4
    return-void

    .line 167
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->k:Z

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_4

    .line 170
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->j:Z

    if-nez v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Lorg/json/JSONObject;)V

    goto :goto_4
.end method

.method public static c(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/ml;
    .registers 5

    .prologue
    .line 75
    const-string v0, "com.baidu.tieba.sso.HandleSSOService"

    .line 76
    const-string v0, "com.baidu.tieba"

    .line 77
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.baidu.tieba.sso.HandleSSOService"

    const-string v3, "com.baidu.tieba"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ml;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_11

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 122
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->d()V

    .line 133
    :cond_11
    :goto_11
    return-void

    .line 124
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ml$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ml$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->c()V

    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->k:Z

    if-eqz v0, :cond_5

    .line 145
    :cond_4
    :goto_4
    return-void

    .line 139
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->k:Z

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_4

    .line 141
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->j:Z

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mm;->a()V

    goto :goto_4
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 267
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->f()V

    .line 277
    :goto_d
    return-void

    .line 269
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ml$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ml$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    if-eqz v0, :cond_e

    .line 281
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    .line 285
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    if-eqz v0, :cond_20

    .line 287
    :try_start_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ml$b;->a()V

    .line 288
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_21

    .line 292
    :goto_1e
    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    .line 294
    :cond_20
    return-void

    .line 289
    :catch_21
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/mm;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->f:Lcom/baidu/bdgame/sdk/obf/mm;

    .line 83
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 88
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ml$b;

    invoke-direct {v2, p0, v5}, Lcom/baidu/bdgame/sdk/obf/ml$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    .line 94
    const-class v2, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ml;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", START!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ml;->i:Lcom/baidu/bdgame/sdk/obf/ml$b;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 97
    if-nez v1, :cond_6f

    .line 98
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Result: service not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->c()V

    .line 100
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->e()V

    .line 101
    const/4 v0, 0x0

    .line 108
    :goto_6e
    return v0

    .line 105
    :cond_6f
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ml$c;

    invoke-direct {v1, p0, v5}, Lcom/baidu/bdgame/sdk/obf/ml$c;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    .line 106
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml;->h:Lcom/baidu/bdgame/sdk/obf/ml$c;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6e
.end method

.method public b()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ml;->j:Z

    .line 115
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ml;->f()V

    .line 116
    return-void
.end method
