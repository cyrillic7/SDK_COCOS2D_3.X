.class public Lcom/baidu/frontia/module/deeplink/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/frontia/module/deeplink/a/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/a/c;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/frontia/module/deeplink/a/b;

    invoke-direct {v0, p1, p2}, Lcom/baidu/frontia/module/deeplink/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/c;->b:Lcom/baidu/frontia/module/deeplink/a/b;

    iput-boolean p3, p0, Lcom/baidu/frontia/module/deeplink/a/c;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v0

    aput-object p2, v2, v1

    if-ne v1, p4, :cond_f

    aput-object p2, v2, v0

    aput-object p1, v2, v1

    :cond_f
    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_26

    aget-object v0, v2, v1

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    move-object p5, v0

    :cond_21
    :goto_21
    return-object p5

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_26
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_21
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/frontia/module/deeplink/a/f;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_48

    if-eqz p3, :cond_48

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_48

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/f;

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_48
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v9, 0x1

    const-string v6, "http://developer.baidu.com"

    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a/c;->b:Lcom/baidu/frontia/module/deeplink/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/frontia/module/deeplink/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/a/d;

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->c()Ljava/lang/String;

    move-result-object v3

    iget-boolean v1, p0, Lcom/baidu/frontia/module/deeplink/a/c;->c:Z

    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->f()I

    move-result v4

    :goto_2e
    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v1, 0x2

    if-ne v1, v4, :cond_3b

    const/4 v1, 0x1

    :try_start_38
    invoke-virtual {v7, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :cond_3b
    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_dc

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/frontia/module/deeplink/a/e;

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/a/e;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_46

    move-object v5, v1

    :goto_5d
    if-eqz v5, :cond_da

    invoke-virtual {v5}, Lcom/baidu/frontia/module/deeplink/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/baidu/frontia/module/deeplink/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/baidu/frontia/module/deeplink/a/e;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7b

    invoke-direct {p0, v1, v5, p3}, Lcom/baidu/frontia/module/deeplink/a/c;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v5, p3}, Lcom/baidu/frontia/module/deeplink/a/c;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    :cond_7b
    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->a()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/frontia/module/deeplink/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_83} :catch_8b

    move-result-object v0

    :goto_84
    move-object v6, v0

    :cond_85
    :goto_85
    return-object v6

    :cond_86
    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/a/d;->e()I

    move-result v4

    goto :goto_2e

    :catch_8b
    move-exception v0

    if-eqz v3, :cond_85

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_85

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_85

    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://d.91.com/Search?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_85

    :cond_da
    move-object v0, v6

    goto :goto_84

    :cond_dc
    move-object v5, v2

    goto :goto_5d
.end method
