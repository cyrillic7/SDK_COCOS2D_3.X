.class public Lcom/tencent/android/tpush/stat/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->a:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->b:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->c:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/a/a;->f:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/a/a;->g:J

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->a:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->b:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->c:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/a/a;->f:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/a/a;->g:J

    .line 57
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/a/a;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/tencent/android/tpush/stat/a/a;->b:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/tencent/android/tpush/stat/a/a;->e:I

    .line 60
    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :try_start_5
    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "mc"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "mid"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "aid"

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/a/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    const-string v1, "ver"

    iget v2, p0, Lcom/tencent/android/tpush/stat/a/a;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_30

    .line 140
    :goto_2f
    return-object v0

    .line 138
    :catch_30
    move-exception v1

    goto :goto_2f
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 188
    iput p1, p0, Lcom/tencent/android/tpush/stat/a/a;->e:I

    .line 189
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/tencent/android/tpush/stat/a/a;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
