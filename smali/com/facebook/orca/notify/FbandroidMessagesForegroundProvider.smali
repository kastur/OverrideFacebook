.class public Lcom/facebook/orca/notify/FbandroidMessagesForegroundProvider;
.super Lcom/facebook/orca/notify/MessengerForegroundProvider;
.source "FbandroidMessagesForegroundProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/facebook/orca/notify/MessengerForegroundProvider;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://com.facebook.orca.notify.FbandroidMessagesForegroundProvider/orca_foreground"

    return-object v0
.end method
