.class Lcom/duoku/platform/view/AdPageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/AdPageView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/duoku/platform/view/AdPageView;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/AdPageView;Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/AdPageView$2;->c:Lcom/duoku/platform/view/AdPageView;

    iput-object p2, p0, Lcom/duoku/platform/view/AdPageView$2;->d:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->a:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 87
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView$2;->d:Landroid/content/Context;

    const-string v2, "cp_ad_click_statistic"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->c:Lcom/duoku/platform/view/AdPageView;

    invoke-static {v0}, Lcom/duoku/platform/view/AdPageView;->a(Lcom/duoku/platform/view/AdPageView;)Lcom/duoku/platform/bean/b;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->c:Lcom/duoku/platform/view/AdPageView;

    invoke-static {v0}, Lcom/duoku/platform/view/AdPageView;->a(Lcom/duoku/platform/view/AdPageView;)Lcom/duoku/platform/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/bean/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://api.m.duoku.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz v1, :cond_a9

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_a9

    .line 98
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 100
    :goto_58
    if-eqz v1, :cond_60

    .line 102
    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 116
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->b:Ljava/lang/String;

    if-eqz v0, :cond_8a

    .line 118
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->c:Lcom/duoku/platform/view/AdPageView;

    invoke-static {v0}, Lcom/duoku/platform/view/AdPageView;->a(Lcom/duoku/platform/view/AdPageView;)Lcom/duoku/platform/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/bean/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$2;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_8a
    return-void

    .line 104
    :cond_8b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 107
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/duoku/platform/view/AdPageView$2;->a:Ljava/lang/String;

    .line 108
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/duoku/platform/view/AdPageView$2;->b:Ljava/lang/String;

    .line 109
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5a

    goto :goto_60

    :cond_a9
    move-object v1, v0

    goto :goto_58
.end method
