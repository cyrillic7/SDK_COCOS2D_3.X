.class public abstract Lcom/tencent/android/tpush/stat/event/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static i:Ljava/lang/String;

.field protected static k:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:J

.field protected e:I

.field protected f:Lcom/tencent/android/tpush/stat/a/a;

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected l:Z

.field protected m:J

.field protected n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "xgsdk"

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->i:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJ)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 35
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    .line 37
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/event/d;->l:Z

    .line 43
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->m:J

    .line 52
    iput-wide p3, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Axg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 54
    invoke-static {p1, p3, p4}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/stat/event/d;->a(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    .line 35
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    .line 37
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/event/d;->l:Z

    .line 43
    iput-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->m:J

    .line 60
    iput-object p2, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/a/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    .line 63
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->m:J

    .line 64
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/tencent/android/tpush/stat/event/d;->a(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/event/d;->n:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/tencent/android/tpush/stat/event/d;->e:I

    .line 71
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/t;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/stat/t;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    .line 72
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/android/tpush/stat/event/EventType;

    if-eq v0, v1, :cond_45

    .line 73
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/a/g;->n(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/stat/event/d;->g:I

    .line 77
    :goto_20
    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_44

    .line 78
    :cond_32
    invoke-static {p1}, Lcom/tencent/android/tpush/XGPushConfig;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 80
    const-string v0, "0"

    sput-object v0, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    .line 83
    :cond_44
    return-void

    .line 75
    :cond_45
    sget-object v0, Lcom/tencent/android/tpush/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/android/tpush/stat/event/EventType;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/event/EventType;->a()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/android/tpush/stat/event/d;->g:I

    goto :goto_20
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public abstract b()Lcom/tencent/android/tpush/stat/event/EventType;
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 100
    :try_start_2
    const-string v1, "ky"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "et"

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/stat/event/EventType;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    if-eqz v1, :cond_4b

    .line 103
    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/stat/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "mc"

    invoke-static {p1, v2, v1}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/d;->f:Lcom/tencent/android/tpush/stat/a/a;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/a/a;->d()I

    move-result v1

    .line 107
    const-string v2, "ut"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/event/d;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/a/g;->p(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_4b

    .line 110
    const-string v1, "ia"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :cond_4b
    const-string v1, "cui"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/stat/event/EventType;->SESSION_ENV:Lcom/tencent/android/tpush/stat/event/EventType;

    if-eq v1, v2, :cond_68

    .line 115
    const-string v1, "av"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "ch"

    sget-object v2, Lcom/tencent/android/tpush/stat/event/d;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_68
    iget-boolean v1, p0, Lcom/tencent/android/tpush/stat/event/d;->l:Z

    if-eqz v1, :cond_72

    .line 120
    const-string v1, "impt"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    :cond_72
    const-string v1, "mid"

    sget-object v2, Lcom/tencent/android/tpush/stat/event/d;->k:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "idx"

    iget v2, p0, Lcom/tencent/android/tpush/stat/event/d;->g:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "si"

    iget v2, p0, Lcom/tencent/android/tpush/stat/event/d;->e:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/event/d;->b()Lcom/tencent/android/tpush/stat/event/EventType;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/stat/event/EventType;->CUSTOM:Lcom/tencent/android/tpush/stat/event/EventType;

    if-ne v1, v2, :cond_bb

    .line 126
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->m:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    const-string v1, "cts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    :goto_9d
    const-string v1, "sv"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->n:Landroid/content/Context;

    iget-wide v4, p0, Lcom/tencent/android/tpush/stat/event/d;->c:J

    invoke-static {v2, v4, v5}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "dts"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/event/d;->n:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/event/d;->a(Lorg/json/JSONObject;)Z

    move-result v0

    .line 139
    :goto_ba
    return v0

    .line 129
    :cond_bb
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c2} :catch_c3

    goto :goto_9d

    .line 138
    :catch_c3
    move-exception v1

    goto :goto_ba
.end method

.method public c()J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/tencent/android/tpush/stat/event/d;->d:J

    return-wide v0
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/event/d;->n:Landroid/content/Context;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/tencent/android/tpush/stat/event/d;->l:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/stat/event/d;->b(Lorg/json/JSONObject;)Z

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 150
    :goto_c
    return-object v0

    .line 148
    :catch_d
    move-exception v0

    .line 150
    const-string v0, ""

    goto :goto_c
.end method
