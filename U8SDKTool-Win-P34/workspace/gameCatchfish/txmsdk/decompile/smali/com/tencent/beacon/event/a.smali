.class public final Lcom/tencent/beacon/event/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "INSTALL_UPLOADED_DENGTA"

    sput-object v0, Lcom/tencent/beacon/event/a;->g:Ljava/lang/String;

    .line 33
    const-string v0, "USEAPP_UPLOADED_DENGTA"

    sput-object v0, Lcom/tencent/beacon/event/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZI)V
    .registers 12

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/tencent/beacon/event/a;->b:Z

    .line 27
    iput-boolean v3, p0, Lcom/tencent/beacon/event/a;->c:Z

    .line 28
    iput-boolean v3, p0, Lcom/tencent/beacon/event/a;->d:Z

    .line 29
    const/16 v0, 0xb4

    iput v0, p0, Lcom/tencent/beacon/event/a;->e:I

    .line 31
    const-string v0, "N"

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->f:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/tencent/beacon/event/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/a$1;-><init>(Lcom/tencent/beacon/event/a;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->j:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/tencent/beacon/event/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/a$2;-><init>(Lcom/tencent/beacon/event/a;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->k:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/tencent/beacon/event/a$3;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/a$3;-><init>(Lcom/tencent/beacon/event/a;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->l:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    .line 39
    iput-boolean p2, p0, Lcom/tencent/beacon/event/a;->c:Z

    .line 40
    iput-boolean p3, p0, Lcom/tencent/beacon/event/a;->b:Z

    .line 41
    iput-boolean p4, p0, Lcom/tencent/beacon/event/a;->d:Z

    .line 42
    iput p5, p0, Lcom/tencent/beacon/event/a;->e:I

    .line 43
    invoke-static {}, Lcom/tencent/beacon/event/n;->a()Lcom/tencent/beacon/event/n;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_43

    .line 45
    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->f:Ljava/lang/String;

    .line 48
    :cond_43
    iget-boolean v0, p0, Lcom/tencent/beacon/event/a;->c:Z

    if-eqz v0, :cond_62

    .line 50
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/tencent/beacon/event/a;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 52
    const-string v0, "installApp list has been uploaded today!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_62
    :goto_62
    iget-boolean v0, p0, Lcom/tencent/beacon/event/a;->b:Z

    if-eqz v0, :cond_73

    .line 62
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;J)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/a;->a(Z)V

    .line 66
    :cond_73
    return-void

    .line 55
    :cond_74
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;J)V

    goto :goto_62
.end method

.method static synthetic a(Lcom/tencent/beacon/event/a;)V
    .registers 15

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 24
    iget-boolean v0, p0, Lcom/tencent/beacon/event/a;->d:Z

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/a;->c(Z)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_c2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_c2

    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "A58"

    iget-object v4, p0, Lcom/tencent/beacon/event/a;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v11, 0x31

    div-int/lit8 v13, v0, 0x32

    if-le v13, v1, :cond_80

    move v9, v8

    :goto_2b
    if-ge v9, v13, :cond_c2

    move v4, v8

    :goto_2e
    if-ge v4, v11, :cond_55

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x31

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v5, v9, 0x1

    if-ne v0, v5, :cond_49

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v5, v5, 0x32

    if-eq v0, v5, :cond_55

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2e

    :cond_55
    const-string v0, "A83"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_install_apps"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez v9, :cond_75

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    sget-object v4, Lcom/tencent/beacon/event/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_75
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v12, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2b

    :cond_80
    move v4, v8

    :goto_81
    if-ge v4, v11, :cond_a4

    add-int/lit8 v0, v11, -0x1

    if-ne v4, v0, :cond_94

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_90
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_81

    :cond_94
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    :cond_a4
    const-string v0, "A83"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_install_apps"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/tencent/beacon/event/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c2
    return-void
.end method

.method private b(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 242
    :cond_5
    :goto_5
    return-object v2

    .line 219
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 220
    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_6b

    .line 227
    :try_start_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 229
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v4, 0x2710

    if-ge v2, v4, :cond_69

    :cond_4d
    const/4 v2, 0x1

    .line 230
    :goto_4e
    if-eqz v2, :cond_52

    if-eqz p1, :cond_27

    .line 231
    :cond_52
    new-instance v4, Lcom/tencent/beacon/a/a/b;

    invoke-direct {v4}, Lcom/tencent/beacon/a/a/b;-><init>()V

    .line 234
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    .line 235
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, v4, Lcom/tencent/beacon/a/a/b;->c:I

    .line 236
    iput-boolean v2, v4, Lcom/tencent/beacon/a/a/b;->d:Z

    .line 237
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_64} :catch_65

    goto :goto_27

    .line 240
    :catch_65
    move-exception v0

    move-object v0, v1

    :goto_67
    move-object v2, v0

    .line 242
    goto :goto_5

    .line 229
    :cond_69
    const/4 v2, 0x0

    goto :goto_4e

    .line 240
    :catch_6b
    move-exception v0

    move-object v0, v2

    goto :goto_67

    :cond_6e
    move-object v0, v1

    goto :goto_67

    :cond_70
    move-object v0, v2

    goto :goto_67
.end method

.method static synthetic b(Lcom/tencent/beacon/event/a;)V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 24
    iget-boolean v0, p0, Lcom/tencent/beacon/event/a;->d:Z

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/a;->b(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    sget-object v4, Lcom/tencent/beacon/event/a;->h:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/b;

    iget-boolean v4, v0, Lcom/tencent/beacon/a/a/b;->d:Z

    if-eqz v4, :cond_75

    const-string v4, "Y"

    :goto_44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/tencent/beacon/a/a/b;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v1, v0, Lcom/tencent/beacon/a/a/b;->e:Z

    goto :goto_32

    :cond_75
    const-string v4, "N"

    goto :goto_44

    :cond_78
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "A58"

    iget-object v4, p0, Lcom/tencent/beacon/event/a;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A84"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_use_apps"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;)Z

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->c(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    if-eqz v0, :cond_9c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/b;

    iget-boolean v4, v0, Lcom/tencent/beacon/a/a/b;->d:Z

    if-eqz v4, :cond_f2

    const-string v4, "Y"

    :goto_c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/tencent/beacon/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Lcom/tencent/beacon/a/a/b;->c:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    :cond_f2
    const-string v4, "N"

    goto :goto_c3

    :cond_f5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "A58"

    iget-object v4, p0, Lcom/tencent/beacon/event/a;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A84"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rqd_use_apps"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/tencent/beacon/event/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_11f
    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/util/List;Z)Z

    goto/16 :goto_9c
.end method

.method private c(Z)Ljava/util/List;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    if-nez v1, :cond_7

    .line 299
    :cond_6
    :goto_6
    return-object v0

    .line 253
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 254
    if-eqz v4, :cond_6

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_bd

    .line 260
    :try_start_21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 262
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9e

    const/4 v2, 0x1

    .line 263
    :goto_3a
    if-nez p1, :cond_3e

    if-eqz v2, :cond_25

    .line 264
    :cond_3e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    if-ge v7, v8, :cond_a0

    .line 278
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :goto_8b
    if-eqz v2, :cond_b7

    .line 290
    const-string v0, "N"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 297
    :catch_9a
    move-exception v0

    move-object v0, v1

    goto/16 :goto_6

    :cond_9e
    move v2, v3

    .line 262
    goto :goto_3a

    .line 283
    :cond_a0
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 292
    :cond_b7
    const-string v0, "Y"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_bc} :catch_9a

    goto :goto_92

    .line 297
    :catch_bd
    move-exception v1

    goto/16 :goto_6

    :cond_c0
    move-object v0, v1

    goto/16 :goto_6
.end method

.method static synthetic c(Lcom/tencent/beacon/event/a;)V
    .registers 5

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/tencent/beacon/event/a;->d:Z

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/a;->b(Z)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/a/a/b;

    iget-object v3, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/util/List;Z)Z

    iget-object v0, p0, Lcom/tencent/beacon/event/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 10

    .prologue
    const/16 v2, 0x6e

    .line 94
    if-eqz p1, :cond_18

    .line 95
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/beacon/event/a;->l:Ljava/lang/Runnable;

    iget v0, p0, Lcom/tencent/beacon/event/a;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iget v0, p0, Lcom/tencent/beacon/event/a;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 99
    :goto_17
    return-void

    .line 97
    :cond_18
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/a/d;->a(IZ)V

    goto :goto_17
.end method
