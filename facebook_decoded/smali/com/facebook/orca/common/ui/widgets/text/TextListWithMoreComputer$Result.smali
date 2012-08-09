.class public Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;
.super Ljava/lang/Object;
.source "TextListWithMoreComputer.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->a:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer$Result;->b:I

    return v0
.end method
