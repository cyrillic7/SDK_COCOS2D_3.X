.class public final Lcom/meizu/gamecenter/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/meizu/gamecenter/a/ae;


# instance fields
.field private b:Lcom/meizu/gamecenter/a/s;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/meizu/gamecenter/a/ae;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/meizu/gamecenter/a/ae;->a:Lcom/meizu/gamecenter/a/ae;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/meizu/gamecenter/a/ae;

    invoke-direct {v0}, Lcom/meizu/gamecenter/a/ae;-><init>()V

    sput-object v0, Lcom/meizu/gamecenter/a/ae;->a:Lcom/meizu/gamecenter/a/ae;

    .line 25
    :cond_b
    sget-object v0, Lcom/meizu/gamecenter/a/ae;->a:Lcom/meizu/gamecenter/a/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ae;)Lcom/meizu/gamecenter/a/s;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    if-nez v0, :cond_c

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must call init() before call login()/payOnline()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzBuyInfo;Lcom/meizu/gamecenter/sdk/MzPayListener;)V
    .registers 7

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ae;->b()V

    .line 66
    new-instance v0, Lcom/meizu/gamecenter/a/ai;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/meizu/gamecenter/a/ag;

    invoke-direct {v2, p0}, Lcom/meizu/gamecenter/a/ag;-><init>(Lcom/meizu/gamecenter/a/ae;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/meizu/gamecenter/a/ai;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/meizu/filetransfer/b;)V

    .line 76
    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/ai;->a()V

    .line 78
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ae;->b()V

    .line 51
    new-instance v0, Lcom/meizu/gamecenter/a/ai;

    new-instance v1, Lcom/meizu/gamecenter/a/af;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/af;-><init>(Lcom/meizu/gamecenter/a/ae;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/meizu/gamecenter/a/ai;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/meizu/filetransfer/b;)V

    .line 61
    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/ai;->a()V

    .line 62
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    if-eqz v0, :cond_1c

    .line 44
    invoke-static {p1}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;)Lcom/meizu/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/a/s;->b()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v3}, Lcom/meizu/gamecenter/a/s;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 44
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    :cond_1c
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    if-nez v0, :cond_24

    .line 31
    new-instance v0, Lcom/meizu/gamecenter/a/s;

    invoke-direct {v0, p2, p3}, Lcom/meizu/gamecenter/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    .line 32
    invoke-static {p1}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;)Lcom/meizu/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/a/s;->b()Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v3}, Lcom/meizu/gamecenter/a/s;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 32
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    :cond_23
    return-void

    .line 35
    :cond_24
    new-instance v0, Lcom/meizu/gamecenter/a/s;

    invoke-direct {v0, p2, p3}, Lcom/meizu/gamecenter/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/meizu/gamecenter/a/ae;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v1, v0}, Lcom/meizu/gamecenter/a/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "game info cant change!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
