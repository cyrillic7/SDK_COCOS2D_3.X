.class public final Lcom/tencent/beacon/heatmap/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/beacon/heatmap/c;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/heatmap/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->a:Lcom/tencent/beacon/heatmap/c;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->e:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZII)V
    .registers 12

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/heatmap/c;->b:Z

    .line 23
    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/beacon/heatmap/c;->c:I

    .line 24
    new-instance v0, Lcom/tencent/beacon/heatmap/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/heatmap/c$1;-><init>(Lcom/tencent/beacon/heatmap/c;)V

    iput-object v0, p0, Lcom/tencent/beacon/heatmap/c;->g:Ljava/lang/Runnable;

    .line 41
    iput-boolean p1, p0, Lcom/tencent/beacon/heatmap/c;->b:Z

    .line 42
    iput p2, p0, Lcom/tencent/beacon/heatmap/c;->c:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    .line 46
    iget-boolean v0, p0, Lcom/tencent/beacon/heatmap/c;->b:Z

    if-eqz v0, :cond_35

    .line 47
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    const/16 v2, 0x6d

    iget-object v3, p0, Lcom/tencent/beacon/heatmap/c;->g:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/beacon/a/d;->a(ILjava/lang/Runnable;JJ)V

    .line 49
    :cond_35
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/beacon/heatmap/c;
    .registers 2

    .prologue
    .line 59
    const-class v0, Lcom/tencent/beacon/heatmap/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/beacon/heatmap/c;->a:Lcom/tencent/beacon/heatmap/c;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(ZII)Lcom/tencent/beacon/heatmap/c;
    .registers 5

    .prologue
    .line 52
    const-class v1, Lcom/tencent/beacon/heatmap/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/heatmap/c;->a:Lcom/tencent/beacon/heatmap/c;

    if-nez v0, :cond_e

    .line 53
    new-instance v0, Lcom/tencent/beacon/heatmap/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/beacon/heatmap/c;-><init>(ZII)V

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->a:Lcom/tencent/beacon/heatmap/c;

    .line 55
    :cond_e
    sget-object v0, Lcom/tencent/beacon/heatmap/c;->a:Lcom/tencent/beacon/heatmap/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/beacon/heatmap/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p0, :cond_b

    .line 102
    const-string v0, "getDisplayMetrics but context == null!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_a
    return-void

    .line 106
    :cond_b
    :try_start_b
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 109
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->e:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3c} :catch_3d

    goto :goto_a

    .line 112
    :catch_3d
    move-exception v0

    .line 113
    const-string v1, "getDisplayMetrics error!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/16 v1, 0xa0

    .line 129
    .line 130
    if-nez p0, :cond_5

    .line 151
    :goto_4
    return-void

    .line 134
    :cond_5
    :try_start_5
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 137
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_4d

    const/high16 v3, 0x3f800000

    cmpl-float v0, v0, v3

    if-nez v0, :cond_28

    .line 150
    :goto_21
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/heatmap/c;->f:Ljava/lang/String;

    goto :goto_4

    .line 140
    :cond_28
    :try_start_28
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_34

    .line 141
    const/16 v1, 0x78

    goto :goto_21

    .line 142
    :cond_34
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L

    cmpl-double v0, v4, v6

    if-nez v0, :cond_40

    .line 143
    const/16 v1, 0xf0

    goto :goto_21

    .line 144
    :cond_40
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_42} :catch_4d

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L

    cmpl-double v0, v2, v4

    if-nez v0, :cond_52

    .line 145
    const/16 v0, 0x140

    :goto_4b
    move v1, v0

    .line 149
    goto :goto_21

    .line 147
    :catch_4d
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21

    :cond_52
    move v0, v1

    goto :goto_4b
.end method

.method static synthetic b(Lcom/tencent/beacon/heatmap/c;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/beacon/heatmap/c;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 9

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/heatmap/b;

    .line 89
    invoke-virtual {v0}, Lcom/tencent/beacon/heatmap/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_c

    .line 87
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_29
    :try_start_29
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    const-string v0, "A17"

    sget-object v2, Lcom/tencent/beacon/heatmap/c;->e:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "A52"

    sget-object v2, Lcom/tencent/beacon/heatmap/c;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "A81"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "rqd_heatmap"

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 96
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_26

    .line 98
    :cond_59
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/beacon/heatmap/b;)V
    .registers 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 72
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 73
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 74
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/heatmap/b;

    .line 75
    iget v2, p1, Lcom/tencent/beacon/heatmap/b;->a:I

    iget v0, v0, Lcom/tencent/beacon/heatmap/b;->a:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/tencent/beacon/heatmap/b;->a:I

    .line 76
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    :cond_27
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/beacon/heatmap/c;->c:I

    if-lt v0, v1, :cond_39

    .line 81
    invoke-direct {p0}, Lcom/tencent/beacon/heatmap/c;->c()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 84
    :cond_39
    monitor-exit p0

    return-void

    .line 71
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/beacon/heatmap/c;->b:Z

    return v0
.end method
