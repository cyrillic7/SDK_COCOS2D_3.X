.class public Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/utils/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPUInfo"
.end annotation


# static fields
.field public static final FEATURE_COMMON:Ljava/lang/String; = "common"

.field public static final FEATURE_NEON:Ljava/lang/String; = "neon"

.field public static final FEATURE_VFP:Ljava/lang/String; = "vfp"

.field public static final PROCESSOR_ARMV5:Ljava/lang/String; = "armv5"

.field public static final PROCESSOR_ARMV6:Ljava/lang/String; = "armv6"

.field public static final PROCESSOR_ARMV7:Ljava/lang/String; = "armv7"

.field public static final PROCESSOR_ARM_PREFIX:Ljava/lang/String; = "armv"


# instance fields
.field public features:Ljava/lang/String;

.field public processor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->processor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->features:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpuPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->processor:Ljava/lang/String;

    const-string v1, "armv7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "armeabi-v7a"

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->processor:Ljava/lang/String;

    const-string v1, "armv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "armeabi"

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->processor:Ljava/lang/String;

    const-string v1, "intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "x86"

    goto :goto_c

    :cond_27
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->processor:Ljava/lang/String;

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "mips"

    goto :goto_c

    :cond_34
    const-string v0, ""

    goto :goto_c
.end method
