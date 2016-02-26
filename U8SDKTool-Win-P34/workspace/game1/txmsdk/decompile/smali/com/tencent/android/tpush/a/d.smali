.class public Lcom/tencent/android/tpush/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/tencent/android/tpush/a/e;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v1, p0, Lcom/tencent/android/tpush/a/d;->a:I

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->b:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/tencent/android/tpush/a/e;

    invoke-direct {v0}, Lcom/tencent/android/tpush/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->d:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->e:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->f:Ljava/lang/String;

    .line 144
    iput v1, p0, Lcom/tencent/android/tpush/a/d;->g:I

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->h:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->i:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->j:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/a/d;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v0, "action_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 157
    const-string v0, "action_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/a/d;->a:I

    .line 159
    :cond_15
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 160
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->b:Ljava/lang/String;

    .line 162
    :cond_25
    const-string v0, "aty_attr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 163
    const-string v0, "aty_attr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 166
    :try_start_39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    const-string v3, "if"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/tencent/android/tpush/a/e;->a:I

    .line 168
    iget-object v0, p0, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    const-string v3, "pf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tencent/android/tpush/a/e;->b:I
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_52} :catch_e1

    .line 175
    :cond_52
    :goto_52
    const-string v0, "intent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 176
    const-string v0, "intent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->d:Ljava/lang/String;

    .line 178
    :cond_62
    const-string v0, "browser"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 179
    const-string v0, "browser"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->e:Ljava/lang/String;

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/android/tpush/a/d;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 182
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/android/tpush/a/d;->f:Ljava/lang/String;

    .line 184
    :cond_89
    const-string v2, "confirm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 185
    const-string v2, "confirm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/a/d;->g:I

    .line 188
    :cond_99
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 189
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/a/d;->i:Ljava/lang/String;

    .line 190
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/android/tpush/a/d;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "packageDownloadUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 192
    const-string v1, "packageDownloadUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/android/tpush/a/d;->j:Ljava/lang/String;

    .line 194
    :cond_c0
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 195
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/android/tpush/a/d;->h:Ljava/lang/String;

    .line 197
    :cond_d0
    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 198
    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/a/d;->g:I

    .line 201
    :cond_e0
    return-void

    .line 169
    :catch_e1
    move-exception v0

    .line 170
    const-string v2, "TPush"

    const-string v3, "decode activityAttribute error"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52
.end method
