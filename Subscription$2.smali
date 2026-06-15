.class Lcom/vaidilya/collegeconnect/activities/Subscription$2;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vaidilya/collegeconnect/activities/Subscription;->loadSubscriptionStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;


# direct methods
.method constructor <init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .line 149
    # Subscription logic removed - no error handling needed
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2

    .line 152
    # Always show active state - all users are premium with unlimited access
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription$2;->this$0:Lcom/vaidilya/collegeconnect/activities/Subscription;

    invoke-static {v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->-$$Nest$mshowActiveState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    return-void
.end method
