.class Lcom/baidu/mobstat/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/e;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mobstat/e;

    invoke-direct {v0}, Lcom/baidu/mobstat/e;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/e;->a:Lcom/baidu/mobstat/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/e;->b:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/e;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/e;->a:Lcom/baidu/mobstat/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "stat"

    const-string v1, "openExceptonAnalysis"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/e;->b:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/e;->b:Z

    invoke-static {}, Lcom/baidu/mobstat/a;->a()Lcom/baidu/mobstat/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;)V

    :cond_15
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 9

    if-nez p1, :cond_a

    const-string v0, "stat"

    const-string v1, "exceptonAnalysis, context=null"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/a;->a()Lcom/baidu/mobstat/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/a;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1c

    const-string v0, "stat"

    const-string v1, "no exception str"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_1c
    const-string v0, "stat"

    const-string v1, "move exception cache to stat cache"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_25
    :try_start_25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "c"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/baidu/mobstat/b;->a(JLjava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_4f

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :catch_4f
    move-exception v0

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
