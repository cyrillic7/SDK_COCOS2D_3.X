.class public final Lcom/baidu/wallet/core/plugins/pluginmanager/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/baidu/wallet/core/plugins/pluginmanager/h;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;
    .registers 2

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    invoke-direct {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    :cond_e
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_48
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_70
    if-ge v0, v4, :cond_7a

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_7a
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++ now delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "com.baidu.wallet.preferences_name"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/wallet/core/c/a;
    .registers 9

    new-instance v1, Lcom/baidu/wallet/core/c/a;

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/baidu/wallet/core/c/a;-><init>(I)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/c;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_SLIENTDOWNLOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/d;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_FORCEDOWNLOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADING:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/b;

    invoke-direct {v5, p1, p2, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->DOWNLOADCOMPLETE:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v2

    sget-object v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v3

    sget-object v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_LOAD:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v4

    new-instance v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;

    invoke-direct {v5, p1, p2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;IIILcom/baidu/wallet/core/c/a$a;)V

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$b;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a;

    if-nez v0, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/wallet/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->EVENT_INIT:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/EventEnum;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a;

    if-eqz v0, :cond_13

    sget-object v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->ORIGINAL:Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/StatusEnum;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a;->a(I)V

    :cond_13
    return-void
.end method

.method public a(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V
    .registers 9

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->getPlugin()Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    move-result-object v1

    if-eqz v1, :cond_20

    if-eqz p6, :cond_20

    invoke-interface {p6, p3, p4, p5}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadSuccess(Ljava/lang/String;ZZ)V

    goto :goto_13

    :cond_20
    invoke-virtual {v0, p1, p6, p4, p5}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(ZLcom/baidu/wallet/core/plugins/pluginmanager/a;ZZ)V

    goto :goto_13
.end method

.method public b()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V
    .registers 9

    if-eqz p6, :cond_5

    invoke-interface {p6, p3, p4}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadOngoing(Ljava/lang/String;Z)V

    :cond_5
    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-direct {v0, p2, p3}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p4, p5}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(ZLcom/baidu/wallet/core/plugins/pluginmanager/a;ZZ)V

    return-void
.end method
