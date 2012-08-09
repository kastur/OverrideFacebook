.class public final Landroid_src/provider/Telephony$MmsSms$PendingMessages;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1659
    sget-object v0, Landroid_src/provider/Telephony$MmsSms;->a:Landroid/net/Uri;

    const-string v1, "pending"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
