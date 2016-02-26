.class public final Lcom/tencent/android/tpush/logging/a/f;
.super Lcom/tencent/android/tpush/logging/a/k;
.source "ProGuard"


# static fields
.field public static final a:Lcom/tencent/android/tpush/logging/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/tencent/android/tpush/logging/a/f;

    invoke-direct {v0}, Lcom/tencent/android/tpush/logging/a/f;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/logging/a/f;->a:Lcom/tencent/android/tpush/logging/a/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 30
    sparse-switch p1, :sswitch_data_1c

    .line 67
    :goto_3
    return-void

    .line 34
    :sswitch_4
    invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 39
    :sswitch_8
    invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 44
    :sswitch_c
    invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 49
    :sswitch_10
    invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 54
    :sswitch_14
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 61
    :sswitch_18
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 30
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
