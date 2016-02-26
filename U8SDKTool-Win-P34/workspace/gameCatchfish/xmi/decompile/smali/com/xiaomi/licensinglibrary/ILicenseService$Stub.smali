.class public abstract Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/licensinglibrary/ILicenseService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.licensinglibrary.ILicenseService"

.field static final TRANSACTION_checkLicense:I = 0x1

.field static final TRANSACTION_getCpOrderId:I = 0x4

.field static final TRANSACTION_getLocalInfo:I = 0x2

.field static final TRANSACTION_sendReport:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/licensinglibrary/ILicenseService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/licensinglibrary/ILicenseService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/licensinglibrary/ILicenseService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/xiaomi/licensinglibrary/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/licensinglibrary/a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_9a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const-string v0, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_a

    :sswitch_12
    const-string v2, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_25
    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    move v0, v1

    goto :goto_a

    :cond_36
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    :sswitch_3a
    const-string v0, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_50

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4e
    move v0, v1

    goto :goto_a

    :cond_50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    :sswitch_54
    const-string v0, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_a

    :sswitch_71
    const-string v2, "com.xiaomi.licensinglibrary.ILicenseService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_84

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_84
    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/ILicenseService$Stub;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_96

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_93
    move v0, v1

    goto/16 :goto_a

    :cond_96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_93

    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_54
        0x4 -> :sswitch_71
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
