.class public final Landroid_src/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1714
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
