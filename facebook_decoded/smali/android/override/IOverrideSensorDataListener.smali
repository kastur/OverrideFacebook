.class public interface abstract Landroid/override/IOverrideSensorDataListener;
.super Ljava/lang/Object;
.source "IOverrideSensorDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/override/IOverrideSensorDataListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSensorDataChanged(I[FJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
