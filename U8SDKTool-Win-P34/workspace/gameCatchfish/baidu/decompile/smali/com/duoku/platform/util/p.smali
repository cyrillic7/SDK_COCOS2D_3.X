.class public Lcom/duoku/platform/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Landroid/widget/Toast;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    .line 10
    sput-wide v2, Lcom/duoku/platform/util/p;->c:J

    .line 11
    sput-wide v2, Lcom/duoku/platform/util/p;->d:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 14
    sget-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1a

    .line 15
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    .line 16
    sget-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/duoku/platform/util/p;->c:J

    .line 30
    :cond_15
    :goto_15
    sget-wide v0, Lcom/duoku/platform/util/p;->d:J

    sput-wide v0, Lcom/duoku/platform/util/p;->c:J

    .line 31
    return-void

    .line 19
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/duoku/platform/util/p;->d:J

    .line 20
    sget-object v0, Lcom/duoku/platform/util/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 21
    sget-wide v0, Lcom/duoku/platform/util/p;->d:J

    sget-wide v2, Lcom/duoku/platform/util/p;->c:J

    sub-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 22
    sget-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 25
    :cond_38
    sput-object p1, Lcom/duoku/platform/util/p;->b:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget-object v0, Lcom/duoku/platform/util/p;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    return-void
.end method
