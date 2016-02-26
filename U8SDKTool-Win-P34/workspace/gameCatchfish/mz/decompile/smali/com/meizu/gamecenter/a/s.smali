.class public final Lcom/meizu/gamecenter/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/meizu/gamecenter/a/s;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/meizu/gamecenter/a/s;->b:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 14
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "game appid/appkey cant be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1b
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 34
    if-nez p0, :cond_8

    .line 35
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 37
    :goto_5
    return v0

    .line 35
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 37
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/gamecenter/a/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/gamecenter/a/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1e

    instance-of v1, p1, Lcom/meizu/gamecenter/a/s;

    if-eqz v1, :cond_1e

    .line 28
    check-cast p1, Lcom/meizu/gamecenter/a/s;

    .line 29
    iget-object v1, p0, Lcom/meizu/gamecenter/a/s;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/meizu/gamecenter/a/s;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/gamecenter/a/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/meizu/gamecenter/a/s;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/meizu/gamecenter/a/s;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/gamecenter/a/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 31
    :cond_1e
    return v0
.end method
