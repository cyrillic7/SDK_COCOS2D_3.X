.class public final Lcom/tencent/open/a/e;
.super Lcom/tencent/open/a/i;
.source "ProGuard"


# static fields
.field public static final a:Lcom/tencent/open/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/tencent/open/a/e;

    invoke-direct {v0}, Lcom/tencent/open/a/e;-><init>()V

    sput-object v0, Lcom/tencent/open/a/e;->a:Lcom/tencent/open/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/open/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 27
    sparse-switch p1, :sswitch_data_1c

    .line 64
    :goto_3
    return-void

    .line 31
    :sswitch_4
    invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 36
    :sswitch_8
    invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 41
    :sswitch_c
    invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 46
    :sswitch_10
    invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 51
    :sswitch_14
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 58
    :sswitch_18
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 27
    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_8
        0x4 -> :sswitch_c
        0x8 -> :sswitch_10
        0x10 -> :sswitch_14
        0x20 -> :sswitch_18
    .end sparse-switch
.end method
