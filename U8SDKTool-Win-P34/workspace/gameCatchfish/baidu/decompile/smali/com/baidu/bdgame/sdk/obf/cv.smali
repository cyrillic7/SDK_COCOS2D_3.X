.class public Lcom/baidu/bdgame/sdk/obf/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "1"

.field private static final b:Ljava/lang/String; = "2"

.field private static final c:J = 0x42494000L

.field private static final d:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private e:Lcom/baidu/bdgame/sdk/obf/db;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/db;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/db;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv;->e:Lcom/baidu/bdgame/sdk/obf/db;

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;Z)V

    .line 107
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dc;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/cn;",
            "Lcom/baidu/bdgame/sdk/obf/dc;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    if-nez p2, :cond_3

    .line 152
    :cond_2
    return-void

    .line 129
    :cond_3
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/dc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dc;->e()Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-direct {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cz;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cz;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 138
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 139
    const/16 v4, 0x63

    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/dp;->a(I)V

    goto :goto_44
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 5

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cv$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/bdgame/sdk/obf/cv$2;-><init>(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/cn;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/du;->a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/du$a;)V

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dc;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dc;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/cn;",
            "Lcom/baidu/bdgame/sdk/obf/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv;->e:Lcom/baidu/bdgame/sdk/obf/db;

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cv$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/baidu/bdgame/sdk/obf/cv$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/cn;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/db;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lg;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dc;)Z
    .registers 8

    .prologue
    const-wide/32 v4, 0x42494000

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 181
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 182
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 183
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ku;->a(J)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/dc;->b(Ljava/lang/String;)V

    .line 185
    :cond_26
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 186
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 187
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ku;->a(J)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/dc;->b(Ljava/lang/String;)V

    .line 189
    :cond_42
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dc;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dc;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 191
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 192
    invoke-virtual {v3, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 198
    :cond_67
    :goto_67
    return v0

    .line 195
    :cond_68
    const/4 v0, 0x0

    goto :goto_67
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/cn;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/cn;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p2, p1, p3}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 63
    return-void
.end method
