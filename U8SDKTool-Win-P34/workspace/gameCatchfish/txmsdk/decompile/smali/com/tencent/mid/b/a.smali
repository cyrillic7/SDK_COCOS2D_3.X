.class public Lcom/tencent/mid/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:J

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ts"

    sput-object v0, Lcom/tencent/mid/b/a;->a:Ljava/lang/String;

    const-string v0, "times"

    sput-object v0, Lcom/tencent/mid/b/a;->b:Ljava/lang/String;

    const-string v0, "mfreq"

    sput-object v0, Lcom/tencent/mid/b/a;->c:Ljava/lang/String;

    const-string v0, "mdays"

    sput-object v0, Lcom/tencent/mid/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mid/b/a;->e:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mid/b/a;->f:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/mid/b/a;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mid/b/a;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mid/b/a;->e:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mid/b/a;->f:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/mid/b/a;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mid/b/a;->h:I

    invoke-static {p1}, Lcom/tencent/mid/util/Util;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mid/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/tencent/mid/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mid/b/a;->e:J

    :cond_2d
    sget-object v1, Lcom/tencent/mid/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    sget-object v1, Lcom/tencent/mid/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mid/b/a;->g:I

    :cond_3d
    sget-object v1, Lcom/tencent/mid/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    sget-object v1, Lcom/tencent/mid/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mid/b/a;->f:I

    :cond_4d
    sget-object v1, Lcom/tencent/mid/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/tencent/mid/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mid/b/a;->h:I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_5d} :catch_5e

    goto :goto_17

    :catch_5e
    move-exception v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->logWarn(Ljava/lang/Throwable;)V

    goto :goto_17
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/mid/b/a;->h:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/mid/b/a;->h:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/tencent/mid/b/a;->e:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/mid/b/a;->e:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/mid/b/a;->f:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/tencent/mid/b/a;->f:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/mid/b/a;->g:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/tencent/mid/b/a;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v0, Lcom/tencent/mid/b/a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mid/b/a;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/mid/b/a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/b/a;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/mid/b/a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/b/a;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/mid/b/a;->d:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/b/a;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_26

    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_26
    move-exception v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->logWarn(Ljava/lang/Throwable;)V

    goto :goto_21
.end method
