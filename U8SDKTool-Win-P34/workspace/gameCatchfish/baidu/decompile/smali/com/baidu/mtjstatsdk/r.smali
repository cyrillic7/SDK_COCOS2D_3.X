.class Lcom/baidu/mtjstatsdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/m;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/m;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 19

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/r;->a:Lcom/baidu/mtjstatsdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    if-eqz p4, :cond_15

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    :cond_15
    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    if-eqz p8, :cond_20

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->g:Ljava/lang/ref/WeakReference;

    :cond_20
    if-eqz p5, :cond_29

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    :cond_29
    if-eqz p9, :cond_32

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->h:Ljava/lang/ref/WeakReference;

    :cond_32
    if-eqz p12, :cond_3d

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p12

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->i:Ljava/lang/ref/WeakReference;

    :cond_3d
    if-eqz p13, :cond_48

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p13

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    :cond_48
    iput p10, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    iput-object p11, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    if-ne v1, v7, :cond_f3

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_4f

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPageStart() \u6216 onPageEnd()\u5b89\u653e\u9519\u8bef  || onPageStart() or onPageEnd() install error."

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef  ||  onPause() or onResume() install error."

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_38

    :cond_4f
    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_74

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_38

    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    if-eqz v5, :cond_dc

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    :goto_82
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "statsdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new page view, page name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",stay time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_38

    :cond_dc
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_82

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_82

    :cond_f3
    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    if-ne v1, v8, :cond_1b4

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_11c

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, " Fragment onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef||onPause() or onResume() install error."

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_38

    :cond_11c
    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_142

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_38

    :cond_142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    const-string v5, "statsdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment new page view, page name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",stay time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(ms)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_38

    :cond_1b4
    iget v1, p0, Lcom/baidu/mtjstatsdk/r;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/r;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_1de

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, " Fragment onPause() \u6216 onResume()\u5b89\u653e\u9519\u8bef||onPause() or onResume() install error."

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_38

    :cond_1de
    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_202

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v6

    const-string v1, "onPause,WeakReference is already been released"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto/16 :goto_38

    :cond_202
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_252

    const-string v5, "statsdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.app.Fragment new page view, page name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",stay time = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "(ms)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_252
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Lcom/baidu/mtjstatsdk/a/b;

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/r;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/a/b;->a(Ljava/lang/String;JJ)V

    sget-object v0, Lcom/baidu/mtjstatsdk/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/r;->b:J

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->flushSession(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_38
.end method
