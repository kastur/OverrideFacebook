.class Lcom/facebook/katana/util/logging/MobileEventLogger$2;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/util/logging/MobileEventLogger;


# direct methods
.method constructor <init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$2;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$2;->a:Lcom/facebook/katana/util/logging/MobileEventLogger;

    invoke-static {v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->e(Lcom/facebook/katana/util/logging/MobileEventLogger;)V

    .line 957
    return-void
.end method
