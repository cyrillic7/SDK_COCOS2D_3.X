.class public Lcom/baidu/frontia/module/deeplink/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static g:Lcom/baidu/frontia/module/deeplink/g;

.field private static j:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private final e:I

.field private f:I

.field private h:Lcom/baidu/android/a/a/e;

.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG API OR VERSION NOT SUPPORTED - VERSION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->a()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/frontia/module/deeplink/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/frontia/module/deeplink/g;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x1e61

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->c:I

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->e:I

    iput v1, p0, Lcom/baidu/frontia/module/deeplink/g;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/g;->i:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/baidu/frontia/module/deeplink/g;->f:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/frontia/module/deeplink/g;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/frontia/module/deeplink/g;Lcom/baidu/android/a/a/e;)Lcom/baidu/android/a/a/e;
    .registers 2

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    return-object p1
.end method

.method public static a()Lcom/baidu/frontia/module/deeplink/g;
    .registers 1

    sget-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/frontia/module/deeplink/g;
    .registers 4

    const-class v1, Lcom/baidu/frontia/module/deeplink/g;

    monitor-enter v1

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit v1

    return-object v0

    :cond_8
    :try_start_8
    sget-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;

    if-nez v0, :cond_1b

    sget-object v2, Lcom/baidu/frontia/module/deeplink/g;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_21

    :try_start_f
    sget-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/baidu/frontia/module/deeplink/g;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/module/deeplink/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;

    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1e

    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/baidu/frontia/module/deeplink/g;->g:Lcom/baidu/frontia/module/deeplink/g;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_21

    goto :goto_6

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/baidu/frontia/module/deeplink/g;)I
    .registers 2

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/frontia/module/deeplink/g;)Lcom/baidu/android/a/a/e;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/frontia/module/deeplink/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/frontia/module/deeplink/g;->f()V

    return-void
.end method

.method private f()V
    .registers 5

    const/16 v3, 0x1e61

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_23

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/g;->f:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_23

    new-instance v0, Lcom/baidu/android/pushservice/d/o;

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/d/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/d/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/g;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->f:I

    :cond_23
    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_42

    iget v0, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    if-ne v0, v3, :cond_43

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    :cond_42
    :goto_42
    return-void

    :cond_43
    iget v1, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_63

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    goto :goto_42

    :cond_63
    iput v3, p0, Lcom/baidu/frontia/module/deeplink/g;->d:I

    goto :goto_42
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->i:Landroid/content/Context;

    return-object v0
.end method

.method public c()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/baidu/frontia/module/deeplink/g;->e()Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/baidu/frontia/module/deeplink/h;

    invoke-direct {v1, p0}, Lcom/baidu/frontia/module/deeplink/h;-><init>(Lcom/baidu/frontia/module/deeplink/g;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/baidu/frontia/module/deeplink/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_12
    return v0
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/frontia/module/deeplink/g;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    invoke-virtual {v0}, Lcom/baidu/android/a/a/e;->a()V

    :cond_b
    return-void
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/g;->h:Lcom/baidu/android/a/a/e;

    invoke-virtual {v0}, Lcom/baidu/android/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
