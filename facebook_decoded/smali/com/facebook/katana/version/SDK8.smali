.class public Lcom/facebook/katana/version/SDK8;
.super Ljava/lang/Object;
.source "SDK8.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    return-object v0
.end method
