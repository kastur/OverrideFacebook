.class Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;
.super Ljava/lang/Object;
.source "ThreadNameViewComputer.java"


# instance fields
.field final a:Landroid/text/TextPaint;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->a:Landroid/text/TextPaint;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer$Result;->b:Ljava/util/List;

    .line 40
    return-void
.end method
