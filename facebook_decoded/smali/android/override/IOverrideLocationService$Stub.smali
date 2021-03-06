.class public abstract Landroid/override/IOverrideLocationService$Stub;
.super Landroid/os/Binder;
.source "IOverrideLocationService.java"

# interfaces
.implements Landroid/override/IOverrideLocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/IOverrideLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/override/IOverrideLocationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.override.IOverrideLocationService"

.field static final TRANSACTION_addOverrideProvider:I = 0x4

.field static final TRANSACTION_getLastKnownLocation:I = 0x3

.field static final TRANSACTION_removeOverrideProvider:I = 0x5

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportOverrideLocation:I = 0x6

.field static final TRANSACTION_requestLocationUpdates:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.override.IOverrideLocationService"

    invoke-virtual {p0, p0, v0}, Landroid/override/IOverrideLocationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/override/IOverrideLocationService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.override.IOverrideLocationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/override/IOverrideLocationService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/override/IOverrideLocationService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/override/IOverrideLocationService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/override/IOverrideLocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    .line 55
    .local v2, _arg2:Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/override/IOverrideLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/override/IOverrideLocationListener;

    move-result-object v3

    .line 56
    .local v3, _arg3:Landroid/override/IOverrideLocationListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/override/IOverrideLocationService$Stub;->requestLocationUpdates(Ljava/lang/String;Ljava/lang/String;ZLandroid/override/IOverrideLocationListener;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Landroid/override/IOverrideLocationListener;
    :sswitch_2
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/override/IOverrideLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/override/IOverrideLocationListener;

    move-result-object v0

    .line 65
    .local v0, _arg0:Landroid/override/IOverrideLocationListener;
    invoke-virtual {p0, v0}, Landroid/override/IOverrideLocationService$Stub;->removeUpdates(Landroid/override/IOverrideLocationListener;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:Landroid/override/IOverrideLocationListener;
    :sswitch_3
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/override/IOverrideLocationService$Stub;->getLastKnownLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 77
    .local v4, _result:Landroid/location/Location;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v4, p3, v5}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Landroid/location/Location;
    :sswitch_4
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/override/IOverrideLocationService$Stub;->addOverrideProvider(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/override/IOverrideLocationService$Stub;->removeOverrideProvider(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v6, "android.override.IOverrideLocationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    sget-object v6, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 117
    .local v1, _arg1:Landroid/location/Location;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/override/IOverrideLocationService$Stub;->reportOverrideLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v1           #_arg1:Landroid/location/Location;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/location/Location;
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
